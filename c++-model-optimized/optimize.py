import re
import subprocess
from copy import deepcopy
import os

HEADER_FILE = "Quadra.hpp"
MAX_ERROR = 2.150e-6

def updateHeader(a_i, a_f, b_i, b_f, c_i, c_f):
    replacements = {
        r'^const int A_I = .*// <optimize>': f'const int A_I = {a_i};  // <optimize>',
        r'^const int A_F = .*// <optimize>': f'const int A_F = {a_f};  // <optimize>',
        r'^const int B_I = .*// <optimize>': f'const int B_I = {b_i};  // <optimize>',
        r'^const int B_F = .*// <optimize>': f'const int B_F = {b_f};  // <optimize>',
        r'^const int C_I = .*// <optimize>': f'const int C_I = {c_i};  // <optimize>',
        r'^const int C_F = .*// <optimize>': f'const int C_F = {c_f};  // <optimize>',
    }

    with open(HEADER_FILE, 'r') as f:
        lines = f.readlines()

    new_lines = []
    for line in lines:
        replaced = False
        for pattern, replacement in replacements.items():
            if re.match(pattern, line.strip()):
                new_lines.append(replacement + '\n')
                replaced = True
                break
        if not replaced:
            new_lines.append(line)

    with open(HEADER_FILE, 'w') as f:
        f.writelines(new_lines)

def buildAndRun():
    print("Building with make...")
    result = subprocess.run(["make"], capture_output=True)
    if result.returncode != 0:
        print("Build failed: ", result.stderr.decode())
        return False
    print("Starting simulation...")
    test = subprocess.run(["./QuadraTb"], capture_output=True)
    if test.returncode != 0:
        print("Simulation failed!")
        return False
    return True

def approxFixedSecondStep():
    with open("err.dat" , 'r') as f:
        lines = f.readlines()
        for line in lines:
            if float(line) > MAX_ERROR:
                print(f"Error too high: {line.strip()}")
                return False
    return True

def objectiveFunction(current_bw, original_bw):
    delta = [o - c for o, c in zip(original_bw, current_bw)]
    return -sum(delta)

def optimizeIntegerWidth(initial_iw, step_size=1, max_iters=10):
    print('===First step (Integer)===')
    current_iw = deepcopy(initial_iw)
    original_iw = deepcopy(initial_iw)
    history = []
    improved = True
    iter_count = 0

    while improved and iter_count < max_iters:
        improved = False
        iter_count += 1
        for i in range(len(current_iw)):
            canditdate_iw = current_iw[:]
            canditdate_iw[i] = max(1, current_iw[i] - step_size)

            if canditdate_iw[i] == current_iw[i]:
                continue

            updateHeader(4, canditdate_iw[0], 4, canditdate_iw[1], 4, canditdate_iw[2])
            if not buildAndRun():
                valid = False
            else:
                valid = approxFixedSecondStep()  # Insert validation logic here

            current_OF = objectiveFunction(current_iw, original_iw)
            candidate_OF = objectiveFunction(canditdate_iw, original_iw)

            if valid and candidate_OF < current_OF:
                current_iw = canditdate_iw
                improved = True
                print(f"Improved! New iw: {current_iw}, OF: {candidate_OF}")
    
    opt_iw = current_iw
    opt_OF = objectiveFunction(opt_iw, original_iw)
    return opt_iw, opt_OF

def optimizeFractionWidth(initial_fw, best_iw, step_size=1, max_iters=10):
    print('===Second step (Fraction)===')
    current_fw = deepcopy(initial_fw)
    original_fw = deepcopy(initial_fw)
    history = []
    improved = True
    iter_count = 0

    while improved and iter_count < max_iters:
        improved = False
        iter_count += 1
        for i in range(len(current_fw)):
            candidate_fw = current_fw[:]
            candidate_fw[i] = max(1, current_fw[i] - step_size)

            if candidate_fw[i] == current_fw[i]:
                continue

            updateHeader(candidate_fw[0], best_iw[0], candidate_fw[1], best_iw[1], candidate_fw[2], best_iw[2])
            if not buildAndRun():
                valid = False
            else:
                valid = approxFixedSecondStep()  # Insert validation logic here

            current_OF = objectiveFunction(current_fw, original_fw)
            candidate_OF = objectiveFunction(candidate_fw, original_fw)

            if valid and candidate_OF < current_OF:
                current_fw = candidate_fw
                improved = True
                print(f"Improved! New bw: {current_fw}, OF: {candidate_OF:.2f}")
    
    opt_fw = current_fw
    opt_OF = objectiveFunction(opt_fw, original_fw)
    return opt_fw, opt_OF

if __name__ == "__main__":
    initial_iw = [28, 28, 28] 
    # [23, 16, 11] - optimal choice for integer width
    opt_iw, opt_OF = optimizeIntegerWidth(initial_iw, step_size=1, max_iters=20)
    print(f"\nOptimal IW: {opt_iw}, Objective: {opt_OF}")
    initial_fw = [4, 4, 4]
    # [1, 3, 2] - optimal choice for fraction width
    opt_fw, opt_OF = optimizeFractionWidth(initial_fw, opt_iw, step_size=1, max_iters=5)
    print(f"\nOptimal FW: {opt_fw}, Objective: {opt_OF}")
function [opt_bw, opt_OF, history] = secondStep(initial_bw, step_size, max_iters)

    lut = lut7Generator();

    m_start = 0x013880;
    m_stop = 0x01D4C0;
    m_step = 0x000003;

    m_samples = m_start:m_step:m_stop;
    m_samples = double(m_samples)/double(0x00800000);
    
    current_bw = initial_bw;
    original_bw = initial_bw;
    history = struct('bw', {}, 'OF', {}, 'valid', {});
    iter = 0;
    improved = true;
    
    while improved && iter < max_iters
        improved = false;
        iter = iter + 1;
        for dv = 1:length(current_bw)
            candidate_bw = current_bw;
            candidate_bw(dv) = max(1, current_bw(dv) - step_size);
            
            if candidate_bw(dv) == current_bw(dv)
                continue;
            end
            
            valid = true;
            for m = m_samples
                if ~approxFixedSecondStep(m, candidate_bw, lut)
                    valid = false;
                    fprintf("Invalid solution!\n")
                    break;
                end
            end
            
            current_OF = objective_function(current_bw, original_bw);
            candidate_OF = objective_function(candidate_bw, original_bw);
            
            history(end+1) = struct('bw', candidate_bw, ...
                                  'OF', candidate_OF, ...
                                  'valid', valid);
            
            if valid && (candidate_OF < current_OF)
                current_bw = candidate_bw;
                improved = true;
                fprintf('Improved! New bw: [%d %d %d], OF: %.2f\n', ...
                        current_bw(1), current_bw(2), current_bw(3), candidate_OF);
            end
        end
    end
    
    opt_bw = current_bw;
    opt_OF = objective_function(current_bw, original_bw);
end

function of = objective_function(current_bw, original_bw)
    delta_bits = original_bw - current_bw;
    of = -sum(delta_bits);
end

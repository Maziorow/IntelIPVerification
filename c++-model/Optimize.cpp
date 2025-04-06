#include <cmath>
#include <vector>

#include <Quadra.hpp>


void optimize(){
    int x_change = 0;

    for(int i=X1_F-1; i>0; i--){
        std::vector<double> row(4, 0);
        std::vector<std::vector<double>> tmp_lut(pow(2, i+1), row);
        for(int k=0; k<pow(2, i+1); k++){
            double x = k / pow(2, i+1);
            tmp_lut[k][0] = k;
            tmp_lut[k][1] = sin((2*x)-PI_OVER_4);
            tmp_lut[k][2] = 2*cos((2*x)-PI_OVER_4);
            tmp_lut[k][3] = -2*sin((2*x)-PI_OVER_4);

        }
    
    }
}



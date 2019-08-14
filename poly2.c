#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char* argv[]) {
    if (argc <= 3) {
        return -1; 
    }

    double a = atof(argv[1]);
    double b = atof(argv[2]);
    double c = atof(argv[3]);

    double d = b * b - 4 * a * c;

    if (d < 0) {
        fprintf(stderr, "Solution is imaginary");
        return -2;
    }

    double x[2] = {
        (-b - sqrt(d)) / (2 * a),
        (-b + sqrt(d)) / (2 * a)
    };    

    printf("%lf\t%lf\n", x[0], x[1]);    
    return 0;
}

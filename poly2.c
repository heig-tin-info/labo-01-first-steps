#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]) {
    if (argc <= 3) {
        return -1; 
    }

    double a = atof(argv[1]);
    double b = atof(argv[2]);
    double c = atof(argv[3]);

    double d = b * b - 4 * a * c;

    if (is_not_real) {
        fprintf(stderr, "Error: Solution is imaginary\n");
        return -2;
    }

    double x[2] = {0, 0};

    printf("%lf\t%lf\n", x[0], x[1]);    
    return 0;
}

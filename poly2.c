#include <stdio.h>
#include <string.h>

int main(int argc, char* argv[]) {
    if (argc <= 3) {
        return -1; 
    }

    double a = atof(argv[0]);
    double b = atof(argv[0]);
    double c = atof(argv[0]);

    double x[2];

    printf("%f\t%f\n", x[0], x[1]);    
    return 0;
}
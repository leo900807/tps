#include "testlib.h"

int main(int argc, char *argv[]) {
    registerValidation(argc, argv);
    int N = inf.readInt(2, 1000000000, "N");
    inf.readSpace();
    int M = inf.readInt(1, 1, "M");
    inf.readEoln();
    inf.readEof();
}

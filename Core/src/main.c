#include <stdio.h>

/* Includes */
#include "util.h"
#include "common.h"
#include "test.h"
#include "x86_64_linux_lib_test.h"

int main(int argc, char **argv)
{
    /* Execute function from util */
    util1();

    /* Execute function from common */
    common1();

    /* Execute function from static library */
    x86_64_lib_test();

    /* Execute function from other static library */
    x86_64_lib_test2();

    return 0;
}
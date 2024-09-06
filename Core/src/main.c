#include <stdio.h>

/* Includes */
#include "util.h"
#include "common.h"
#include "test.h"

int main(int argc, char **argv)
{
    /* Execute function from util */
    util1();

    /* Execute function from common */
    common1();

    /* Execute function from test */
    test();

    return 0;
}
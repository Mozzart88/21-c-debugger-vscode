#! /bin/sh
FILES=$(find $1 -type f -name *.c -print)
gcc -g -Wall -Wextra -Werror $FILES -o $1/a.out

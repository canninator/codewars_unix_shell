#!/bin/bash
nbDig() {
    # your code
    n=$1
    d=$2
    echo 0 >res
    for i in $(seq $n)
    do
    sq=`expr $i \* $i`
    echo -n "$sq" >> res
    done
    cat res | grep -o .|grep -c $d
}
nbDig $1 $2

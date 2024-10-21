#!/bin/bash
INDIR=$1
TIMEOUT=1800
CSVFILE=./ins$INDIR/result.csv

shopt -s nullglob
echo "iteration,encoding,strategy,instance,optimum found,timetotal,timesolving,value" > $CSVFILE
for ins in ./ins$INDIR/*.lp
    do
        for enc in ./enc/*.lp
        do
            filename=$(basename -- "$ins")
		    id="${filename%.*}"
            #echo "$(clingo $enc $ins -q  --time-limit=$TIMEOUT)" >> $CSVFILE
            echo "$1,$enc,bb,$id,$(clingo $enc $ins -q  --time-limit=$TIMEOUT | sed ':a;N;$!ba;s/\n//g'| sed -E "s/.*(\.|p)(UNSATISFIABLE|SATISFIABLE|UNKNOWN|OPTIMUM FOUND)(TIME LIMIT   : [ 0-9]+)?(Models       : [0-9+]*)?(  Optimum    : [yesunknown]*)?(Optimization : )?([0-9 ]+)?Calls        : [0-9+]*Time         : ([0-9.]*)s \(Solving: ([0-9.]*)s ... Model: [0-9.]*s Unsat: [0-9.]*s\)CPU Time     : [0-9.]*s/\2,\8,\9,\7/")" >> $CSVFILE
        done               
    done 
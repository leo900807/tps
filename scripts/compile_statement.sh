#!/bin/bash

set -e

if [[ $# -lt 1 ]]; then
    echo "Usage: ./compile_statement.sh [code]"
    exit 0
fi

if ! [[ -f "$1/statement/statement.tex" ]]; then
    echo "Cannot find $1/statement/statement.tex"
    exit 0
fi

if [[ -f "statementbox/statement.pdf" ]]; then
    rm "statementbox/statement.pdf"
fi

for f in $(find "$1/statement/" -type f); do
    cp ${f} "statementbox/"
done
cd statementbox
xelatex statement.tex
cd ..

if ! [[ -f "statementbox/statement.pdf" ]]; then
    echo "Compile Error"
    exit 0
fi

mv "statementbox/statement.pdf" "$1/statement/statement.pdf"

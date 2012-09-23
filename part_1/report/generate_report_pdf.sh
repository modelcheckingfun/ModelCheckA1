#!/bin/bash

DIR="$(dirname "$0")"

cd "$DIR"

die() {
    echo "$@" >&2
    exit 1
}

#Running twice to ensured correct generation.
pdflatex -interaction=nonstopmode report.tex || die "Generation FAILED"
pdflatex -interaction=nonstopmode report.tex || die "Generation FAILED"

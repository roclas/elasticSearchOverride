#!/usr/bin/env bash

DIR=$(dirname "$(readlink -f "$0")")
awk '{printf("\"%s\",\n",$0)}END{printf("\"%s\"\n",$0)}' $DIR/../synonyms.csv | tac | sed '2d' | tac


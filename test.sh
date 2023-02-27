#!/usr/bin/env bash

awk -f admonition-to-callout.awk ./tests/fixtures/original.md > ./tests/tmp/generated.md

result=$(diff ./tests/fixtures/expected.md ./tests/tmp/generated.md)

status=$?

[ $status -eq 0 ] && echo "Transformation was successful" || echo "Transformation failed: $result"

rm ./tests/tmp/generated.md

exit $status

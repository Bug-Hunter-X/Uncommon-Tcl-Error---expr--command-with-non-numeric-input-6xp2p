# Uncommon Tcl Error: [expr] command with non-numeric input

This repository demonstrates a subtle error that can occur when using the `[expr]` command in Tcl. The issue arises when the operands of the expression are not numeric values resulting in an error that is not immediately obvious.

## Bug Description

The `badproc` procedure attempts to add two numbers using `[expr]`.  However, it does not handle the case where the inputs `a` or `b` are non-numeric strings. This causes `[expr]` to fail silently and may lead to unexpected behavior or crashes.

## Bug Solution

The solution involves checking the input types before performing the addition using `string is double` and handling the case of non-numeric input appropriately, such as returning an error message or a default value.
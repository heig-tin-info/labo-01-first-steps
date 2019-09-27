#!/bin/bash
EXEC=$1

[[ $($EXEC 42 36) == "6" ]] && [[ $? -eq 0 ]] || exit 1
[[ $($EXEC 42 37) == "1" ]] && [[ $? -eq 0 ]] || exit 1

$EXEC 42 2> /dev/null
[[ $? -ne 0 ]] || exit 1

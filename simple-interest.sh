#!/usr/bin/env bash
# Calculate simple interest using an annual percentage rate and time in years.
set -euo pipefail
export LC_ALL=C

if (( $# == 0 )); then
    read -r -p 'Principal amount: ' principal || exit 1
    read -r -p 'Annual interest rate (%): ' rate || exit 1
    read -r -p 'Time (years): ' time || exit 1
elif (( $# == 3 )); then
    principal=$1
    rate=$2
    time=$3
else
    printf 'Usage: %s [principal annual-rate-percent years]\n' "$0" >&2
    exit 1
fi

for value in "$principal" "$rate" "$time"; do
    if [[ ! $value =~ ^([0-9]+([.][0-9]*)?|[.][0-9]+)$ ]]; then
        printf 'Error: all inputs must be nonnegative decimal numbers.\n' >&2
        exit 1
    fi
done

# awk handles fractional rates and durations without an additional dependency.
awk -v principal="$principal" -v rate="$rate" -v time="$time" '
BEGIN {
    interest = (principal * (rate / 100)) * time
    total = principal + interest
    result = sprintf("%.2f %.2f", interest, total)
    if (tolower(result) ~ /inf|nan/) {
        print "Error: input values are too large to calculate." > "/dev/stderr"
        exit 1
    }
    printf "Simple Interest: %.2f\nTotal Amount: %.2f\n", interest, total
}'

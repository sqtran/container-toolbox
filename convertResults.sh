#!/bin/bash
cd /tmp
for i in $(for f in *.txt; do printf '%s\n' "${f%.txt}"; done); do bon_csv2html $i.txt > /tmp/client_temp/$i.html; done

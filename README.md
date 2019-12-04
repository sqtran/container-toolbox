# container-toolbox

Just a little container that has nginx and bonnie++ installed so I can run some IO benchmarks. 


Sample command, run this inside of /tmp/client_temp so it can be served by nginx
```bash
bonnie++ -d . -r 256 -n 0 2>&1 > result.txt
tail -1 result.txt | bon_csv2html > result.html
```

*** This is only useful if you're benchmarking PVs ***

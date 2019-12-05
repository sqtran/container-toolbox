# container-toolbox

Just a little container that has nginx and bonnie++ installed so I can run some IO benchmarks. 


Sample command, run this inside of /tmp so it can be served by nginx
```bash
bonnie++ -d . -r 256 -n 5 -x 5 > result.txt
/tmp/convertResults.sh
```

*** This is only useful if you're benchmarking PVs ***

# container-toolbox

Just a little container that has `nginx` and `bonnie++`` installed so I can run some IO benchmarks against the underlying Persistent Volume.  

__This is only useful if you're benchmarking PVs - don't bother using this for anything else__


Sample command, run this inside of `/tmp` so it can be served by `nginx`.  The results file needs to be in the format `/tmp/*.txt` or else the `convertResults.sh` script won't convert it from `CSV` to `HTML`.

```bash
bonnie++ -d mount_point_here -m name_of_test -n 5 -x 5 > test-results.txt
/tmp/convertResults.sh
```
mount_point_here refers to where your PVC has mounted to.

Once converted, you can access it via HOST:8080/ in your browser.

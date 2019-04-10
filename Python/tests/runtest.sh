#!/bin/bash

control_c() {
    exit
}

trap control_c SIGINT

while true; do
function runAlgs() {
   arr=("$@")
   for i in "${arr[@]}";
      do
          python ~/TIGRE/Python/tests/configurations.py configuration1 "$i"
          python ~/TIGRE/Python/tests/configurations.py configuration2 "$i"
      done

}
array=("FDK" "fbp" "sirt" "ossart" "cgls" "asd_pocs" "awasd_pocs" "fista")

runAlgs "${array[@]}"

python ~/TIGRE/Python/tests/testforlog.py log_summary Fri_Apr_05

done
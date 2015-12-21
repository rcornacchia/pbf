#!/bin/bash

port1=$RANDOM
port2=$RANDOM
port3=$RANDOM
port4=$RANDOM
osascript -e 'tell app "Terminal"
    do script with command "python bfclient.py '$port1' 5 128.59.15.39 '$port2' 5 128.59.15.396 '$port3' 30" in window 2
    do script with command "python bfclient.py '$port3' 5 128.59.15.39 '$port1' 30 128.59.15.396 '$port2' 5" in window 3
end tell'


osascript -e 'tell app "Terminal"
    do script with command "python bfclient.py '$port2' 5 128.59.15.396 '$port1' 5 128.59.15.396 '$port3' 5" in window 4
end tell'
echo port 4 && python ~/code/python/bellman-ford/bfclient.py $port4 5 160.39.231.6 $port2 7

# python ~/code/python/bellman-ford/bfclient.py $port2 10 160.39.231.6 $port1 10 160.39.231.6 $port3 5

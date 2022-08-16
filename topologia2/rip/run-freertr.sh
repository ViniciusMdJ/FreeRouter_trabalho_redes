#!/bin/bash
#by Everson

#Environment variable
RTR=rtr.jar

tmux new-session -d -s rare 'java -jar '$RTR' routersc r1-hw.txt r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r2-hw.txt r2-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r3-hw.txt r3-sw.txt' ENTER;
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc r4-hw.txt r4-sw.txt' ENTER;
tmux select-layout tiled;
tmux a;


#!/bin/bash
#by Everson

#Environment variable

lochost=127.0.0.1
 

tmux new-session -d -s tlnet 'telnet '$lochost' 2001 '
tmux split-window -v -t 0 -p 50
tmux send 'telnet '$lochost' 2002 ' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'telnet '$lochost' 2003 ' ENTER;
tmux split-window -v -t 0 -p 50
tmux send 'telnet '$lochost' 2004 ' ENTER;
tmux select-layout tiled;
tmux a;


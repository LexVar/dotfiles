#!/bin/bash

# source path variables: TESE, SCRIPTS, DSI, etc..
source ~/.user_aliases

# try to attch to existing session named workflow
tmux attach -t workflow

# On error == does not exist, create new session
if [ $? == 1 ]; then
	tmux new-session -d -s workflow -n notes -c $HOME '/bin/fish'
	tmux split-window -h -d -t workflow:notes -c $HOME/Documents/Scripts/vimwiki -b '/bin/fish -c "sleep 1; vim index.md"'
	tmux split-window -v -d -t workflow:notes -c $SCRIPTS '/bin/fish'
	tmux resize-pane -L 29
	tmux new-window -d -a -t workflow:notes -n tese -c $TESE '/bin/fish'
	tmux split-window -h -d -t workflow:tese -c $TESE -b '/bin/fish'
	tmux split-window -v -d -t workflow:tese -c $TESE '/bin/fish'
	tmux new-window -d -a -t workflow:tese -n dsi -c $DSI '/bin/fish'
	tmux split-window -h -d -t workflow:dsi -c $DSI -b '/bin/fish'
	tmux split-window -v -d -t workflow:dsi -c $DSI '/bin/fish'
	tmux new-window -d -a -t workflow:dsi -n misc -c $HOME '/bin/fish'
	tmux attach -t workflow
fi

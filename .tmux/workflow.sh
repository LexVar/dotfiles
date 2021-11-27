#!/bin/bash

# source path variables
source ~/.user_aliases

# try to attch to existing session named workflow
tmux attach -t workflow

# On error == does not exist, create new session
if [ $? == 1 ]; then
	tmux new-session -d -s workflow -n notes -c $HOME '/bin/fish'
	tmux split-window -h -d -t workflow:notes -c $VIMWIKI -b '/bin/fish -c "sleep 1; vim index.md"'
	tmux split-window -v -d -t workflow:notes -c $SCRIPTS '/bin/fish'
	tmux resize-pane -L 29
	tmux new-window -d -a -t workflow:notes -n work -c $HOME/Documents/Projects '/bin/fish'
	tmux split-window -h -d -t workflow:work -c $HOME/Documents/Projects -b '/bin/fish'
	tmux split-window -v -d -t workflow:work -c $HOME/Documents/Projects '/bin/fish'
	# tmux new-window -d -a -t workflow:work -n paper -c $DOCS '/bin/fish'
	# tmux split-window -h -d -t workflow:paper -c $DOCS -b '/bin/fish'
	# tmux split-window -v -d -t workflow:paper -c $DOCS '/bin/fish'
	# tmux resize-pane -t workflow:paper -D 7
	tmux attach -t workflow
fi

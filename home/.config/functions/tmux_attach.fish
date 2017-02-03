function tmux_attach
	test $TERM != "screen"; and tmux has-session -t remote; and tmux attach-session -t remote; or tmux new-session -s remote
end

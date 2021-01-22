function __fzfcmd
    set -q FZF_TMUX; or set FZF_TMUX 0
    set -q FZF_TMUX_HEIGHT; or set FZF_TMUX_HEIGHT 40%
    if test $FZF_TMUX -eq 1
        echo "fzf-tmux -d$FZF_TMUX_HEIGHT"
    else
        echo "fzf"
    end
end

function __fzf_reverse_isearch
    history merge
    history -z | eval (__fzfcmd) --read0 --print0 --tiebreak=index --toggle-sort=ctrl-r $FZF_DEFAULT_OPTS $FZF_REVERSE_ISEARCH_OPTS -q '(commandline)' | read -lz result
    and commandline -- $result
    commandline -f repaint
end

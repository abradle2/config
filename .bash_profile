# Aaron Bradley
# abradley@stitchfix.com

set completion-ignore-case on
set show-all-if-ambiguous on

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# [aliases]
alias ls="ls -GFlash"

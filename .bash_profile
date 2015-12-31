# Aaron Bradley
# abradley@stitchfix.com

set completion-ignore-case on
set show-all-if-ambiguous on

# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# rearrange the command prompt to
# user@hostname cwd$
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# OS X specific config
if [ $(uname) == "Darwin" ]; then
  export TERM=xterm-256color

  # [aliases]
  alias ls='ls -GFlash'

  alias la='ls -alG'
  alias less='less -R'
  alias fnd='open -a Finder'
  alias grp='grep -RIi'
fi

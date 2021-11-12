#---------------------------
# PROMPT
#---------------------------

# Git branch in prompt.
# parse_git_branch() {
#     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# Load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '%F{6}(%b)%f'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST
PROMPT='%1d ${vcs_info_msg_0_} $ '

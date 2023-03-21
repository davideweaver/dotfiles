alias reload!='. ~/.zshrc'

alias cls='clear' # Good 'ol Clear Screen command

alias k='kubectl'
alias k-k3s='k config use-context k3s'
alias k-microk8s='k config use-context microk8s'
alias k-se-int='k config use-context se-int'
alias k-se-prd='k config use-context se-prd'
alias k-se-sbx='k config use-context se-sbx'

alias ll='ls -la'

alias sso-prd='aws sso login --profile business-prd-developer'
alias sso-int='aws sso login --profile business-int-developer'
alias sso-ecr='aws sso login --profile operations-ecr'

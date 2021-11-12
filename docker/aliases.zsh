alias docker-nuke='docker ps -a -q | xargs docker stop; docker container prune -f; docker image prune -a -f; docker volume rm $(docker volume ls -qf dangling=true); killall Docker && open /Applications/Docker.app'
alias docker-stop='docker stop $(docker ps -aq)'

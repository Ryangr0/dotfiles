# Exports
export EDITOR=/usr/bin/nano

# Aliases
alias p='cd ~/projects'
alias pp='cd ~/projects/personal'
alias n='nano'
alias op='open -a Phpstorm'
# Job specific

# Trajectplanner
alias tp='cd ~/projects/trajectplanner'

# Onderwijs Online
alias oo='cd ~/projects/onderwijsonline'

# Command Runner
alias cr='cd ~/projects/command-runner'

# General
alias composer="php /usr/local/bin/composer"

# Docker
alias dps="docker ps"                                 # For ease of use
alias dc="docker-compose"                             # For ease of use
alias dcdu="docker-compose down && docker-compose up" # For easy reloading of docker containers through docker-compose.yml
alias dni="docker network inspect"                    # For ease of use
alias dnps="docker network ps"

# Docker test pipeline with image $1 for project $2
dtp() {
    docker run -it --volume=/Users/ryan/projects/$2:/$2 --workdir="/$2" --memory=2048m $1 /bin/bash
}
dnc () { docker network inspect $1 }
dbash () { docker exec -it "$@" /bin/bash }           # 'ssh' into passed docker container id or name

dcomposer () {
    docker run --rm -v $(pwd):/app composer/composer:php5 $@
}

# Kubernetes
alias k="kubectl"
alias kp="kubectl -n production"
alias ks="kubectl -n staging"
alias kt="kubectl -n test"

# Kubernetes enter pod $1
ke() {
    kubectl -n production  exec -it $@
}



alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias less='less -FSRXc'                    # Preferred 'less' implementation
cd() { builtin cd "$@"; ll; }               # Always list directory contents upon 'cd'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias ..='cd ../'                           # Go back 1 directory level
alias ...='cd ../../'                       # Go back 2 directory levels
alias .3='cd ../../../'                     # Go back 3 directory levels
alias .4='cd ../../../../'                  # Go back 4 directory levels
alias .5='cd ../../../../../'               # Go back 5 directory levels
alias .6='cd ../../../../../../'            # Go back 6 directory levels
alias edit='subl'                           # edit:         Opens any file in sublime editor
alias f='open -a Finder ./'                 # f:            Opens current directory in MacOS Finder
alias ~="cd ~"                              # ~:            Go Home
alias c='clear'                             # c:            Clear terminal display
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
trash () { command mv "$@" ~/.Trash ; }     # trash:        Moves a file to the MacOS trash
ql () { qlmanage -p "$*" >& /dev/null; }    # ql:           Opens any file in MacOS Quicklook Preview
alias DT='tee ~/Desktop/terminalOut.txt'    # DT:           Pipe content to file on MacOS Desktop

export PATH=$PATH:$HOME/.composer/vendor/bin
export PATH=$PATH:/Users/ryan/Library/Python/2.7/bin

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/usr/lib/google-cloud-sdk/path.zsh.inc' ]; then source '/usr/lib/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/usr/lib/google-cloud-sdk/completion.zsh.inc' ]; then source '/usr/lib/google-cloud-sdk/completion.zsh.inc'; fi

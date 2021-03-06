
# Path to the bash it configuration
export BASH_IT="/home/mimr9/.bash_it"

# Lock and Load a custom theme file
# location /.bash_it/themes/
export BASH_IT_THEME='pure'

# (Advanced): Change this to the name of your remote repo if you
# cloned bash-it with a remote other than origin such as `bash-it`.
# export BASH_IT_REMOTE='bash-it'

# Your place for hosting Git repos. I use this for private repos.
export GIT_HOSTING='git@git.domain.com'

# Don't check mail when opening terminal.
unset MAILCHECK

# Change this to your console based IRC client of choice.
export IRC_CLIENT='irssi'

# Set this to the command you use for todo.txt-cli
export TODO="t"

# Set this to false to turn off version control status checking within the prompt for all themes
export SCM_CHECK=true

# Set Xterm/screen/Tmux title with only a short hostname.
# Uncomment this (or set SHORT_HOSTNAME to something else),
# Will otherwise fall back on $HOSTNAME.
#export SHORT_HOSTNAME=$(hostname -s)

# Set Xterm/screen/Tmux title with only a short username.
# Uncomment this (or set SHORT_USER to something else),
# Will otherwise fall back on $USER.
#export SHORT_USER=${USER:0:8}

# Set Xterm/screen/Tmux title with shortened command and directory.
# Uncomment this to set.
#export SHORT_TERM_LINE=true

# Set vcprompt executable path for scm advance info in prompt (demula theme)
# https://github.com/djl/vcprompt
#export VCPROMPT_EXECUTABLE=~/.vcprompt/bin/vcprompt

# (Advanced): Uncomment this to make Bash-it reload itself automatically
# after enabling or disabling aliases, plugins, and completions.
# export BASH_IT_AUTOMATIC_RELOAD_AFTER_CONFIG_CHANGE=1

# Uncomment this to make Bash-it create alias reload.
# export BASH_IT_RELOAD_LEGACY=1

# Load Bash It
source "$BASH_IT"/bash_it.sh

#colorize#{{{
#------------------------------------- man page color

export LESS_TERMCAP_mb=$'\E[1;31m'     # begin bold
export LESS_TERMCAP_md=$'\E[1;36m'     # begin blink
export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin reverse video
export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
export LESS_TERMCAP_ue=$'\E[0m'        # reset underline

#-----------------------------------------------------
#}}}
# aliases{{{
alias e="exit"
alias x="startx"
#alias youtube-dl="proxychains youtube-dl"
alias youtube-dl="youtube-dl --proxy 'socks5://127.0.0.1:9050'"
alias goo="w3m google.com"
alias mank="man -k . -s 3"
alias fas="espeak -v fa"
alias gen="openssl rand -base64"
alias tasks="task next"
alias taskj="timew day; jdate; task calendar; task next"
alias ee="exit; exit;"
alias moff="xset dpms force off"
#alias brightness="xrandr --output eDP-1 --brightness"
alias trayerr="trayer --expand true --widthtype request --transparent true --alpha 255 --edge top --align right &"
#alias pin="kdeconnect-cli --name motorola --ping"
alias xpada="more .config/xpad/content-EN1E4Z"
alias xpadb="more .config/xpad/content-JIH85Z"
alias ydl="/usr/bin/youtube-dl"
#}}}

PATH="$PATH:/home/mimr9/bin:/sbin:/usr/node/bin:/snap/bin:~/.emacs.d/bin:/home/mimr9/.local/bin:/root/.cargo/bin:/snap/bin"
export CFLAGS="-Wall -g"

set -o vi

#export ANDROID_HOME=/home/mimr9/Android
#export PATH=$PATH:$ANDROID_HOME/tools
#export PATH=$PATH:$ANDROID_HOME/tools/bin
#export PATH=$PATH:$ANDROID_HOME/platform-tools
#http_proxy="127.0.0.1:9050"

#npm configs#{{{
NPM_PACKAGES="${HOME}/.npm-packages"

export PATH="$PATH:$NPM_PACKAGES/bin"

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
#}}}

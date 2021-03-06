#
# ~/.bashrc

fortune -a | fmt -80 -s | $(shuf -n 1 -e cowsay cowthink) -$(shuf -n 1 -e b d g p s t w y) -f $(shuf -n 1 -e $(cowsay -l | tail -n +2)) -n
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias du-files='du -h --max-depth=1'
alias du-single='du -sh'
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -Iv'
goagent=~/google_appengine/goagent/local/proxy.py
alias diff='colordiff'              # requires colordiff package
alias mkdir='mkdir -p -v'
alias free='free -h'
alias ll='ls -l'
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
complete -cf sudo
complete -cf man
alias pacman='sudo pacman --color auto'
alias yaourt='sudo yaourt'
alias updatedb='sudo updatedb'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
alias shutdown='sudo shutdown -h now'
alias reboot='sudo reboot'
alias poweroff='sudo poweroff'
alias abs='sudo abs'

Songs='/mnt/c/KuGou'

alias gcc='gcc -Wall'
alias dstat='dstat -cdlmnpsy'

alias dmi-memory='sudo dmidecode -t memory'
alias dmi-processor='sudo dmidecode -t processor'
alias dmi-bios='sudo dmidecode -t bios'

source /usr/share/git/completion/git-completion.bash

alias ftp-start='sudo systemctl start vsftpd'

alias vbox-debian='vboxheadless -startvm "debian" &'
alias vbox-xp='vboxheadless -startvm "XP" &'
alias xp='rdesktop 192.168.57.1:3390 &'
alias debian='rdesktop 192.168.56.1:3389 &'
alias shutdown-xp='VBoxManage controlvm XP poweroff'
alias shutdown-debian='VBoxManage controlvm debian poweroff'

alias reboot-fast='sudo systemctl kexec'
alias grep='grep --color=auto -n'

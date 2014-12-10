# pour éteindre l'ordi
alias dodo="sudo shutdown -P now"

#Pour installer un programme
alias sagi="sudo apt-get install"
alias sagr="sudo apt-get remove"

#Se connecter avec ssh
alias sshpi="ssh pi@web.dtellia.fr"
alias sshpil="ssh pi@192.168.2.105"
alias sshgit="ssh git@web.dtellia.fr"
alias sshgitl="ssh git@192.168.2.105"

#Démarrer firefox avec ma session
alias fd="nohup firefox -P daniel &"

#alias pour autojump
alias j="autojump"

alias tb="nohup thunderbird &"      #Démarrer thunderbird en nohup
alias psin="nohup psi &"            #Démarrer psi en nohup

#Taille d'un fichier ou dossier
alias t="du -hs"
alias rmd="rm -r"

#niveau d'encre epson
alias nink="sudo escputil -i -r /dev/usb/lp0"
alias cleanhup="find /home/daniel/ -name 'nohup.out' -delete"
#OpenFoam
alias cleanFoam="rmd 0.* 1* 2* 3* 4* 5* 6* 7* 8* 9*"
alias ciscovpn="/opt/cisco/anyconnect/bin/vpnui"

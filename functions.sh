# creer dossier et directement entrer dedans
function mkcd() {
  mkdir -p "$1"
    cd "$1"
  }

# aller dans un dossier et directement affichier le contenu
function c() {
  cd "$1"
    ls -l
  }

# revenir en arrière et directement afficher le contenu
function b() {
  cd ..
    ls -l
  }

# Unmount and turn off hardrive (disque dur, quoi)
function dmt() {
  gksudo "umount $1"
  gksudo "hdparm -Y $1"
  echo "Retire ton disque en toute sécurité :) "
  }

#Open pdf
function pdf() {
  nohup evince "$1" &
  }

function extract()      # Handy Extract Program.
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar -xvjf $1                                  ;;
            *.tar.gz)    tar -xvzf $1                                  ;;
            *.bz2)       bunzip2 $1                                    ;;
            *.rar)       unrar x $1                                    ;;
            *.gz)        gunzip $1                                     ;;
            *.tar)       tar -xvf $1                                   ;;
            *.tbz2)      tar -xvjf $1                                  ;;
            *.tgz)       tar -xvzf $1                                  ;;
            *.zip)       unzip $1                                      ;;
            *.Z)         uncompress $1                                 ;;
            *.7z)        7z x $1                                       ;;
            *)           echo "'$1' cannot be extracted via >extract<" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}
##Compilation latex avec des images pstricks
#premiere solution (ne pas mettre l'extension .tex dans la commande)
function compiltex() {
  latex "$1".tex
    dvips "$1".dvi
      ps2pdf "$1".ps
  }
#deuxieme solution : il faut inclure pdf dans les options de documentclass
function texpic() {
  pdflatex --shell-escape "$1"
  }

function cleantex() {
  find ./ -name '*.aux' -delete
  find ./ -name '*.toc' -delete
  find ./ -name '*~' -delete
  find ./ -name '*.bbl' -delete
  find ./ -name '*.blg' -delete
  find ./ -name '*.blg' -delete
  find ./ -name '*.log' -delete
  }


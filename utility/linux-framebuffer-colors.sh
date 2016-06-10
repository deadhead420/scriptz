#!/bin/bash
#Set linux terminal colors to something more pretty.
#Thanks to http://smithfarm-thebrain.blogspot.fr/2012/01/linux-console-text-mode-framebuffer.html
#Thanks to http://phraktured.net/linux-console-colors.html
#TODO: source it from ~/.bash_aliases

THEME="solarized-dark"

if [ "$TERM" = "linux" ]; then
    case "$THEME" in
        "solarized-dark")
            echo -en "\e]P0073642" #black
            echo -en "\e]P8002B36" #darkgrey
            echo -en "\e]P1DC322F" #darkred
            echo -en "\e]P9CB4B16" #red
            echo -en "\e]P2859900" #darkgreen
            echo -en "\e]PA586E75" #green
            echo -en "\e]P3B58900" #brown
            echo -en "\e]PB657B83" #yellow
            echo -en "\e]P4268BD2" #darkblue
            echo -en "\e]PC839496" #blue
            echo -en "\e]P5D33682" #darkmagenta
            echo -en "\e]PD6C71C4" #magenta
            echo -en "\e]P62AA198" #darkcyan
            echo -en "\e]PE93A1A1" #cyan
            echo -en "\e]P7EEE8D5" #lightgrey
            echo -en "\e]PFFDF6E3" #white
        ;;
        "dark")
            echo -en "\e]P0222222" #black
            echo -en "\e]P8222222" #darkgrey
            echo -en "\e]P1803232" #darkred
            echo -en "\e]P9982b2b" #red
            echo -en "\e]P25b762f" #darkgreen
            echo -en "\e]PA89b83f" #green
            echo -en "\e]P3aa9943" #brown
            echo -en "\e]PBefef60" #yellow
            echo -en "\e]P4324c80" #darkblue
            echo -en "\e]PC2b4f98" #blue
            echo -en "\e]P5706c9a" #darkmagenta
            echo -en "\e]PD826ab1" #magenta
            echo -en "\e]P692b19e" #darkcyan
            echo -en "\e]PEa1cdcd" #cyan
            echo -en "\e]P7ffffff" #lightgrey
            echo -en "\e]PFdedede" #white
        ;;
    esac
    
    setterm -background black -store
    setterm -foreground white -store
    clear #for background artifacting

fi

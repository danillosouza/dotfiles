## Dependencies
## ------------
## pacman -Syu zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search

#USE_POWERLINE="true"
[[ -e ~/.config/zsh/main-config.zsh ]] && source ~/.config/zsh/main-config.zsh
[[ -e ~/.config/zsh/main-prompt.zsh ]] && source ~/.config/zsh/main-prompt.zsh

# xdg default config dir
export XDG_CONFIG_HOME="$HOME/.config"

# Perl local::lib
eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# devkitPro
#export DEVKITPRO="/opt/devkitpro"
#export DEVKITARM="$DEVKITPRO/devkitARM"
#export CTRULIB="$DEVKITPRO/libctru"
#export PATH="$PATH:$DEVKITARM/bin"

# clion
export PATH="$PATH:$HOME/.clion/bin"

# go lang
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/go/bin"

# tweego
export TWEEGO_PATH="$HOME/.local/share/Tweego/storyformats"
export TWEEGO_FORMAT="SugarCube-2"
export PATH="$PATH:$HOME/.local/share/Tweego"

# cargo setup
source $HOME/.cargo/env

# npm globals
export PATH="$HOME/.npm-global/bin:$PATH"

# phpenv
export PHPENV_ROOT="/home/azrl/.phpenv"
if [ -d "${PHPENV_ROOT}" ]; then
    export PATH="${PHPENV_ROOT}/bin:${PATH}"
    eval "$(phpenv init -)"
fi

# composer globals
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# doom emacs
export PATH="$HOME/.emacs.d/bin:$PATH"

# steam Proton
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam"
export STEAM_COMPAT_DATA_PATH="$HOME/.proton"

# Docker
alias run_portal="docker run -d --name portal -p 80:80 -v /home/azrl/dev/maisa/artmed_portal:/var/www/html daquadra/artmed_portal"

# aliases
alias l='ls -lh --color=auto'
alias ll='ls -lah --color=auto'

# alias php='php7'

alias emacs='emacs -nw'

alias proton='/home/azrl/.steam/steam/steamapps/common/Proton\ 6.3/proton'

alias screensh="scrot -s ~/media/images/screenshots/%Y%m%d_%H%I%M.png" # default screenshot by selection
alias screensh-f="scrot ~/media/images/screenshots/%Y%m%d_%H%I%M.png"  # full screenshot

# mount external drive
alias hdmount="udisksctl mount -b /dev/sda1"

# restore backlight of main display
alias maxbkl="sudo zsh -c 'echo 255 > /sys/class/backlight/amdgpu_bl0/brightness'"

# :)
# export WINEARCH="win32"
# export WINEPREFIX="$HOME/.winelol"
export WINELOLPREFIX="$HOME/.winelol"
export PROTONPREFIX="$HOME/.proton/pfx"
export LOLCLIENT="$WINELOLPREFIX/drive_c/Riot Games/Riot Client/RiotClientServices.exe"

alias minecraft="flatpak run com.teamshiginima.ShiginimaLauncher"
alias dfortress="exec /home/azrl/media/games/linux/dwarf_fortress/linux_lnp/LinuxLNP-0.43.05-r07/startlnp"
alias ts4="proton run \"$PROTONPREFIX/drive_c/Games/The Sims 4/Game/Bin/TS4_x64.exe\""
# alias riot="proton run $LOLCLIENT"
alias riot="WINEPREFIX=$WINELOLPREFIX /opt/wine-lol/bin/wine \"$LOLCLIENT\""

# Proton Aliases
alias rexpaint="proton run $HOME/.proton/pfx/drive_c/Tools/REXPaint-v1.60/REXPaint.exe"
alias rpaex="proton run $HOME/.proton/pfx/drive_c/Tools/RPAEx/rpaExtract.exe"
alias daz3d="proton run $HOME/.proton/pfx/drive_c/Program\ Files/DAZ\ 3D/DazCentral1/DazCentral.exe"
alias emu8086="proton run $HOME/.proton/pfx/drive_c/emu8086/emu8086.exe"


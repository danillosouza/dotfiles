## Dependencies
## ------------
## pacman -Syu zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search

#USE_POWERLINE="true"
[[ -e ~/.config/zsh/main-config.zsh ]] && source ~/.config/zsh/main-config.zsh
[[ -e ~/.config/zsh/main-prompt.zsh ]] && source ~/.config/zsh/main-prompt.zsh

# xdg default config dir
export XDG_CONFIG_HOME="$HOME/.config"

##
## DevTools
##

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/azrl/.anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/azrl/.anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/azrl/.anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/azrl/.anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# vcpkg
export PATH="$HOME/dev/vcpkg:$PATH"

# Perl local::lib
eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# devkitPro
export DEVKITPRO="/opt/devkitpro"
export DEVKITARM="$DEVKITPRO/devkitARM"
export DEVKITPPC="$DEVKITPRO/devkitPPC"

# dotnet
export DOTNET_ROOT="/home/azrl/.dotnet"
export PATH="$PATH:$DOTNET_ROOT"

# go lang
export GOPATH="$HOME/go"
export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin:$GOPATH/bin"

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

# discord
export PATH="$HOME/.Discord:$PATH"

# steam Proton
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam"
export STEAM_COMPAT_DATA_PATH="$HOME/.proton"

# Docker
alias run_portal="docker run -d --name portal -p 80:80 -v /home/azrl/dev/maisa/artmed_portal:/var/www/html daquadra/artmed_portal"

# aliases
alias l='ls -lh --color=auto --group-directories-first'
alias ll='ls -lah --color=auto --group-directories-first'

# alias php='php7'

alias emacs='emacs -nw'

alias screensh="scrot -s ~/media/images/screenshots/%Y%m%d_%H%I%M.png" # default screenshot by selection
alias screensh-f="scrot ~/media/images/screenshots/%Y%m%d_%H%I%M.png"  # full screenshot

# mount external drive
alias hdmount="udisksctl mount -b /dev/sda1"

# restore backlight of main display
alias maxbkl="sudo zsh -c 'echo 255 > /sys/class/backlight/amdgpu_bl0/brightness'"

# enable apl keyboard and normal keyboard
alias aplkbd="setxkbmap -layout br,apl -variant ,dyalog -option grp:lswitch"
alias defaultkbd="setxkbmap -layout br"


##
## Vulkan
##

export VULKAN_SDK="$HOME/.vulkan/VulkanSDK/1.3.211.0/x86_64"
export PATH="$VULKAN_SDK/bin:$PATH"

export LD_LIBRARY_PATH="$VULKAN_SDK/lib${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}"
export VK_ADD_LAYER_PATH="$VULKAN_SDK/etc/vulkan/explicit_layer.d${VK_ADD_LAYER_PATH:+:$VK_ADD_LAYER_PATH}"

if [ -n "$VK_LAYER_PATH" ]; then
	# Unsetting VK_LAYER_PATH environment variable for SDK usage
    unset VK_LAYER_PATH
fi

##
## Games / GameDev
##

# Proton Config
export STEAM_COMPAT_CLIENT_INSTALL_PATH="$HOME/.steam/steam"
export STEAM_COMPAT_DATA_PATH="$HOME/.proton"
export PROTONPREFIX="$HOME/.proton/pfx"

# Tools
alias godot="exec /home/azrl/.godot/Godot_v3.4.3-stable_mono_x11_64/Godot_v3.4.3-stable_mono_x11.64"
alias proton='/home/azrl/.steam/steam/steamapps/common/Proton\ 6.3/proton'
alias matrix='cmatrix -abC cyan'

# Games
alias minecraft="java -jar \"/home/azrl/.sklauncher/SKlauncher 3-beta.20.jar\""
alias dfortress="exec /home/azrl/media/games/linux/dwarf_fortress/linux_lnp/LinuxLNP-0.43.05-r07/startlnp"
alias ts4="proton run \"$PROTONPREFIX/drive_c/Games/The Sims 4/Game/Bin/TS4_x64.exe\""

# Other games installed:
#   - cataclysm / cataclysm-tiles (Cataclysm: Dark Days Ahead)
#   - dwarffortress               (Dwarf Fortress)
#   - dfortress                   (Dwarf Fortress - LNP Edition)
#   - urw                         (Unreal World)
#   - doomrl                      (Doom Roguelike)
#   - brogue-ce                   (Brogue - Community Edition)
#   - crimesquad                  (Liberal Crime Squad)
#   - umoria                      (Umoria: Dungeons of Moria)
#   - angband                     (Angband - Roguelike)

# Proton Aliases
alias rexpaint="proton run $HOME/.proton/pfx/drive_c/Tools/REXPaint-v1.60/REXPaint.exe"
alias rpaex="proton run $HOME/.proton/pfx/drive_c/Tools/RPAEx/rpaExtract.exe"
alias daz3d="proton run $HOME/.proton/pfx/drive_c/Program\ Files/DAZ\ 3D/DazCentral1/DazCentral.exe"
alias emu8086="proton run $HOME/.proton/pfx/drive_c/emu8086/emu8086.exe"

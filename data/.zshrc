## Dependencies
## ------------
## pacman -Syu zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search

#USE_POWERLINE="true"
[[ -e ~/.config/zsh/main-config.zsh ]] && source ~/.config/zsh/main-config.zsh
[[ -e ~/.config/zsh/main-prompt.zsh ]] && source ~/.config/zsh/main-prompt.zsh

# cargo setup
source $HOME/.cargo/env

# xdg default config dir
export XDG_CONFIG_HOME="$HOME/.config"

# Perl local::lib
eval $(perl -I ~/perl5/lib/perl5/ -Mlocal::lib)

# npm globals
export PATH="$HOME/.npm-global/bin:$PATH"

# composer globals
export PATH="$HOME/.config/composer/vendor/bin:$PATH"

# aliases
alias l='ls -lh --color=auto'
alias ll='ls -lah --color=auto'

alias php='php7'

alias screensh="scrot -s ~/media/images/screenshots/%Y%m%d_%H%I%M.png" # default screenshot by selection
alias screensh-f="scrot ~/media/images/screenshots/%Y%m%d_%H%I%M.png"  # full screenshot

# mount external drive
alias hdmount="udisksctl mount -b /dev/sda1"

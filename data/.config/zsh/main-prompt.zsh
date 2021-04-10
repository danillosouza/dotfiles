
## Enable auto-suggestions
if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
    ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
    ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
fi

## Configure $PS1 layout
# %n        - username
# %m        - hostname
# %2~       - full current path or ~ if home
# %(!.#.$)  - # if su, $ otherwise
# export PROMPT="%n@%m:%2~ %(!.#.$) "


# enable substitution for prompt
setopt prompt_subst

# Maia prompt
export PROMPT="%B%{$fg[cyan]%}%(4~|%-1~/.../%2~|%~)%u%b >%{$fg[cyan]%}>%B%(?.%{$fg[cyan]%}.%{$fg[red]%})>%{$reset_color%}%b "
export RPROMPT="%{$fg[red]%} %(?..[%?])%{$reset_color%}"

# Print a greeting message when shell is started
#echo $USER@$HOST  $(uname -srm) $(lsb_release -rcs)

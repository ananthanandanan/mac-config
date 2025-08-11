# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

#Exports
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
# Created by `pipx` on 2024-05-17 07:18:45
export PATH="$PATH:/Users/ananthan2k/.local/bin"
## Docker Desktop linkage
export PATH=$PATH:~/.docker/bin

ZSH_THEME="robbyrussell"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Aliases
alias lvim="~/.local/bin/lvim"
alias 8gb="ssh ananthan@8gbGPU"
alias 24gb="ssh ananthan@24gbGPU"
alias eusCPU="ssh ananthan@eusCPU"
alias rudhra="ssh ananthan@rudhra"
alias emc="ssh ananthan@emc"
alias trishul="ssh ananthan@trishul"

# Tmux Aliases
# Add these lines to your .zshrc file

# Alias to start a new tmux session
alias tmuxnew='tmux new-session -s'

# Alias to attach to an existing session
alias tmuxattach='tmux attach-session -t'

# Alias to list all tmux sessions
alias tmuxlist='tmux ls'

# Alias to kill a specific session
alias tmuxkill='tmux kill-session -t'

# Alias to kill all tmux sessions
alias tmuxkillall='tmux kill-server'

# Alias to switch to the last session
alias tmuxlast='tmux switch-client -l'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# NVM Config
export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/ananthan2k/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/ananthan2k/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/ananthan2k/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/ananthan2k/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# fzf for zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
source ~/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

## Unset zsh-autosuggestions
unset ZSH_AUTOSUGGEST_USE_ASYNC

## command functions 
## Fuzzy Finder with cd command
fcd() {
  local directory
  directory=$(find * -type d 2>/dev/null | fzf +m) && cd "$directory"
}


## ZSH Setup on startup
eval "$(zoxide init zsh)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(uv generate-shell-completion zsh)"
eval "$(uvx --generate-shell-completion zsh)"
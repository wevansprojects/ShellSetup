# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#lf
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

typeset -U path
bindkey -e
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename '/home/debuser/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion:*:*:*:*:descriptions' format '%F{green}-- %d --%f'
zstyle ':completion:*:*:*:*:corrections' format '%F{yellow}!- %d (errors: %e) -!%f'
zstyle ':completion:*:messages' format ' %F{purple} -- %d --%f'
zstyle ':completion:*:warnings' format ' %F{red}-- no matches found --%f'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' file-list all
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

zmodload zsh/complist
autoload -Uz compinit
compinit
_comp_options+=(globdots)

# End of lines added by compinstall
bindkey ";5C" forward-word
bindkey ";5D" backward-word

source ~/powerlevel10k/powerlevel10k.zsh-theme

# enable color support of ls and also add handy aliases    
if [ -x /usr/bin/dircolors ]; then    
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"    
    alias ls='ls --color=auto'    
    
    alias grep='grep --color=auto'    
    alias fgrep='fgrep --color=auto'    
    alias egrep='egrep --color=auto'    
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#Aliases
alias ll='ls -alF'    
alias la='ls -A'    
alias l='ls -CF'    
alias ds='~/Scripts/Bash/./DiskSpaceUsage.sh'
alias si='~/Scripts/Bash/./BasicSysInfo.sh'
alias du='du -h -d 1'

#Nginx Test and Reload Alias Commands
alias nt='sudo nginx -t'
alias nr='sudo systemctl reload nginx.service' 
 
#PHP Service Reload Alias
alias phpr='sudo systemctl reload php8.2-fpm.service'

#Update Commands
alias sup='/home/debuser/./checksystemupdates'
alias up='sudo apt update; sudo apt upgrade'

#Trash CLI Alias (prevention of rm usage)
alias tp='sudo trash-put'
alias tl='sudo trash-list'
alias tr='sudo trash-restore'
alias te='sudo trash-empty'
alias rm='echo try using trash-cli commands instead!'
alias 'rm -rf'='echo try using trash-cli commands instead!'
alias 'PUML'='/home/debuser/Scripts/Java/Simple_Projects/PlantUML/./UMLViewer.sh'

# IDE Aliases
alias 'idea'="/home/debuser/IDEs/intellij-idea-community-edition/bin/idea"
alias 'charm'="/home/debuser/IDEs/pycharm-community/bin/pycharm"

# History Formatting
export HISTTIMEFORMAT="%d/%m/%y %T "

# Additional Path Values
export PATH=$PATH:/usr/local/go/bin
export PYTHONBREAKPOINT="pudb.set_trace"

#BatCat
export BAT_THEME="Visual Studio Dark+"

#NPM
export PATH=~/.npm-global/bin:$PATH

#Dot Net Avalonia
export DOTNET_ROLL_FORWARD=Major

export LC_ALL=en_US.UTF-8
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH=$PATH:/.vim/pack/plugins/start/fzf/bin
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/bin/terraform terraform

# Load lf icons only if the file exists
[[ -f ~/.config/lf/lf_icons ]] && source ~/.config/lf/lf_icons

#Zsh Auto Suggestions
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


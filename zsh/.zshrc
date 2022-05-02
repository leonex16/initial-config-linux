# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### PLUGINS
source ~/.zsh-plugins/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh-plugins/autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh-plugins/syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

### ALIAS
alias battery="echo $(cat /sys/class/power_supply/BAT0/capacity)% - $(cat /sys/class/power_supply/BAT0/status)"
alias zshload="source ~/.zshrc"
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias qtileconfig="nvim ~/.config/qtile/config.py"
alias upd="sudo pacman -Syyu -y && yay -Syyua && sudo snap refresh"
alias keysnames="input-remapper-control --symbol-names"
alias glp="git log --graph --pretty=format:\"%C(yellow)%h%Creset - %C(blue)%d%Creset - %C(blue)%ar%Creset - %C(white)%s%Creset - <%C(bold blue)%an> %n\" --abbrev-commit --branches"
alias ll="ls -l"

### NVM
source /usr/share/nvm/init-nvm.sh
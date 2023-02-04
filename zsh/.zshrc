# Created by newuser for 5.8.1

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

### ZSH
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
export SAVEHIST=1000000000
export HISTFILE=~/.zsh/zsh_history

# EDITOR
export EDITOR=nvim

### PLUGINS
# git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zsh/powerlevel10k
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

source ~/.zsh/powerlevel10k/powerlevel10k.zsh-theme
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh

### ALIAS
alias zshload="source ~/.zshrc"
alias zshconfig="nvim ~/.zshrc"
alias nvimconfig="nvim ~/.config/nvim/init.vim"
alias qtileconfig="nvim ~/.config/qtile/config.py"
alias upd="sudo sudo dnf upgrade --refresh -y"
alias glp="git log --graph --pretty=format:\"%C(yellow)%h%Creset - %C(blue)%d%Creset - %C(blue)%ar%Creset - %C(white)%s%Creset - <%C(bold blue)%an> %n\" --abbrev-commit --branches"
alias ll="ls -l"
alias gituserconfig="git config user.name \"Leonel Espinoza Sotelo\" && git config user.email \"eb_lespinozas@bancoripley.com\""
alias ggpush="git push -u origin HEAD"
alias ggpull="git pull -u origin HEAD"

### DENO
export DENO_INSTALL="$(echo ~$USER)/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"%

# PNPM
export PNPM_HOME="/home/landscape/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"

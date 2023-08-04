# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ ! -f /opt/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme ]] || source /opt/zsh/plugins/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load zsh-syntax-highlighting
[[ ! -f /opt/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] || source /opt/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

[[ ! -f /opt/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] || source /opt/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ll='ls -l'

alias els='exa -al --color=always --group-directories-first --icons'
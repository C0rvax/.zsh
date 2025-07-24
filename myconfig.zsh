# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
#  export PATH=$HOME/bin:/usr/local/bin:$PATH

export PATH=$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=~/.oh-my-zsh

ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="purify"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

plugins=(
  git
  zsh-syntax-highlighting
  fast-syntax-highlighting
  zsh-autosuggestions
#  zsh-autocomplete
)

source $ZSH/oh-my-zsh.sh

typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

# export MANPATH="/usr/local/man:$MANPATH"
export USER='aduvilla'
export MAIL='aduvilla@sudent.42.fr'

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# File explo
alias 42er='~/Code/embeded/Rush00/'
alias 42e='~/Code/exam06/'
alias 42i='~/Code/TC/inception/'
alias 42tr='~/Code/TC/ft_transcendence/'
alias 42c='~/Code/embeded/Module09/ex03/'
alias 42v='~/Code/TC/vrac/'
alias 42t='~/Code/tests/'
alias 42s='~/Code/TC/scripts/'
alias sniprc="~/.config/nvim/snippets/snippets/"
alias nvirc="~/.config/nvim/"
alias bat='batcat */*'
alias trea="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Compilation
alias vala='clear && valgrind --track-fds=yes --track-origins=yes --leak-check=full --show-leak-kinds=all --trace-children=yes --show-leak-kinds=all'
alias valm='clear && valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --tool=memcheck --keep-debuginfo=yes --trace-children=yes --suppressions=valgrind/valgrind.doc --quiet ./minishell'
alias flcc='clear && cc -Wall -Wextra -Werror'
alias flgcc='clear && gcc -Wall -Wextra -Werror'
alias cdbr="rm -rf compile_flags.txt compile_commands.json .cache/"
alias cdb="cdbr ; compiledb -n make && echo '-I\ninclude/' >> compile_flags.txt"
alias ircser="valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --track-fds=yes ./ircserv 6667 port"

# Edit rc
alias zshrc="nvi ~/.zsh/myconfig.zsh"
alias szsh='source ~/.zshrc'
alias vimrc="nvi ~/.config/nvim"
alias pince="sudo -E ~/AppImage/PINCE-x86_64.AppImage"

# Exec
alias ledger="~/ledger_live/ledger-live-desktop-*.AppImage"
alias nvi="~/AppImage/nvim.appimage"
alias nvio="~/AppImage/nvim.appimage -O"
alias proc="ps -Af"
alias glog="git log --graph --oneline --decorate"
alias chgedit="git config core.editor ~/AppImage/nvim.appimage"

# Update
alias savenvirc="mkdir ~/nvim_backup_stable_$(date +%Y%m%d) && cp -r ~/.config/nvim ~/nvim_backup_stable_$(date +%Y%m%d)/config && cp -r ~/.local/share/nvim/lazy ~/nvim_backup_stable_$(date +%Y%m%d)/lazy_plugins"
alias agu="sudo apt-get update"
alias nagu="sudo nala update"
alias agg="sudo apt-get upgrade"
alias nagg="sudo nala upgrade"
alias agd="sudo apt-get dist-upgrade"
alias nagd="sudo nala dist-upgrade"
alias maj="agu && agg && agd"
alias nmaj="nagu && nagg && nagd"

# Remember
alias catdirs='find app/services/shared -type f ! -name 'out.txt' | while read fichier; do
  echo "// $fichier\n" >> back.txt
  cat "$fichier" >> back.txt
  echo "" >> back.txt
done'
alias catdirf='find app/frontend \( -path "app/frontend/public/assets" -o -path "app/frontend/public/fonts" \) -prune -o -type f ! -name "out.txt" -print | while read fichier; do
  echo "// $fichier" >> front.txt
  cat "$fichier" >> front.txt
  echo "" >> front.txt
done'
alias savealiases='alias > ~/.bash_aliases'
alias rsydoc="rsync --progress -avz ~/Documents c0rvax@192.168.1.6:NetBackup"
alias rssydoc="rsync -e 'ssh -p 22' --progress -avz ~/Documents c0rvax@192.168.1.6:NetBackup"

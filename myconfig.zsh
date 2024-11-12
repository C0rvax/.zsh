
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

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Add wisely, as too many plugins slow down shell startup.
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
alias 42r='~/Code/Rendu'
alias 42c='~/Code/TC/CPP/CPP_05/'
alias 42v='~/Code/TC/vrac/'
alias 42s='~/Code/TC/scripts/'
alias sniprc="~/.config/nvim/snippets/snippets/"
alias nvirc="~/.config/nvim/"
alias bat='batcat */*'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"

# Compilation
alias vala='clear && valgrind --track-fds=yes --track-origins=yes --leak-check=full --show-leak-kinds=all --trace-children=yes --show-leak-kinds=all'
alias valm='clear && valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --tool=memcheck --keep-debuginfo=yes --trace-children=yes --suppressions=valgrind/valgrind.doc --quiet ./minishell'
alias flcc='clear && cc -Wall -Wextra -Werror'
alias flgcc='clear && gcc -Wall -Wextra -Werror'
alias cdbr="rm -rf compile_flags.txt compile_commands.json .cache/"
alias cdb="cdbr ; compiledb -n make && echo '-I\ninclude/' >> compile_flags.txt"

# Edit rc
alias zshrc="nvi ~/.zsh/myconfig.zsh"
alias szsh='source ~/.zshrc'
alias ohmyzsh="nvi ~/.oh-my-zsh"
alias vimrc="nvi ~/.vim_runtime/my_configs.vim"

# Exec
alias ledger="~/ledger_live/ledger-live-desktop-*.AppImage"
alias nvi="~/AppImage/nvim.appimage"
alias nvio="~/AppImage/nvim.appimage -O"
alias proc="ps -Af"
alias glog="git log --graph --oneline --decorate"
alias chgedit="git config core.editor ~/AppImage/nvim.appimage"

# Update
alias agu="sudo apt-get update"
alias nagu="sudo nala update"
alias agg="sudo apt-get upgrade"
alias nagg="sudo nala upgrade"
alias agd="sudo apt-get dist-upgrade"
alias nagd="sudo nala dist-upgrade"
alias maj="agu && agg && agd"
alias nmaj="nagu && nagg && nagd"

# Remember
alias savealiases='alias > ~/.bash_aliases'
alias rsydoc="rsync --progress -avz ~/Documents c0rvax@192.168.1.6:NetBackup"
alias rssydoc="rsync -e 'ssh -p 22' --progress -avz ~/Documents c0rvax@192.168.1.6:NetBackup"

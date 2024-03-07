
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
  zsh-autocomplete
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

alias savealiases='alias > ~/.bash_aliases'
alias term='terminator -mb'
alias 42r='~/Code/Rendu'
alias 42n='~/Code/minishell'
alias 42g='~/Code/TC/GNL/'
alias 42gt='~/Code/TC/GNLtest/'
alias 42l='~/Code/TC/libft/'
alias 42lt='~/Code/TC/libtest/'
alias 42p='~/Code/TC/printf/'
alias 42pt='~/Code/TC/printftest/'
alias 42s='~/Code/TC/so_long/'
alias 42pi='~/Code/TC/pipex/'
alias 42pit='~/Code/TC/piptest/'
alias 42w='~/Code/TC/push_swap/'
alias 42v='~/Code/TC/vrac/'
alias 42sc='~/Code/TC/scripts/'
alias bat='batcat */*'
alias vala='clear && valgrind --track-fds=yes --track-origins=yes --leak-check=full'
alias valm='valgrind --leak-check=full --show-leak-kinds=all --track-origins=yes --tool=memcheck --keep-debuginfo=yes --trace-children=yes --suppressions=valgrind/valgrind.doc --quiet ./minishell'
alias flcc='clear && cc -Wall -Wextra -Werror'
alias flgcc='clear && gcc -Wall -Wextra -Werror'
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
alias zshrc="nvi ~/.zsh/myconfig.zsh"
alias szsh='source ~/.zshrc'
alias ohmyzsh="nvi ~/.oh-my-zsh"
alias vimrc="nvi ~/.vim_runtime/my_configs.vim"
alias ledger="~/ledger_live/ledger-live-desktop-*.AppImage"
alias nvi="~/AppImage/nvim.appimage"
alias nvirc="~/.config/nvim/"
alias pushs="bash push_swap_tester/tester.sh ../push_swap"

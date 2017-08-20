# Path to your oh-my-zsh installation.
export ZSH=/Users/JackDavis/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

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

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Set default user for nicer terminal
DEFAULT_USER=JackDavis
prompt_context(){}

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="vim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set up default docker machine

awsKeyPair(){
  echo "~/Google\ Drive/Trioxis/AWS/Key\ Pairs/$1"
}

gitRmMerged(){
  git branch --merged | grep -v "\*" | grep -v master | grep -v dev | xargs -n 1 git branch -d
}

sourcetree(){
  open $1 -a"sourcetree"
}

gitgraph(){
  git log --graph --oneline --decorate --all
}

gitRebaseMaster(){
  git checkout master && git fetch && git pull && git checkout @{-1} && git rebase master
}

mktouch() {
  if [ $# -lt 1 ]; then
    echo "Missing argument";
    return 1;
  fi

  for f in "$@"; do
    mkdir -p -- "$(dirname -- "$f")"
    touch -- "$f"
  done
}

export TERM=screen-256color

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /Users/JackDavis/.config/yarn/global/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /Users/JackDavis/.config/yarn/global/node_modules/tabtab/.completions/electron-forge.zsh
# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/JackDavis/Projects/electron-test/api/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/JackDavis/Projects/electron-test/api/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/JackDavis/Projects/electron-test/api/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/JackDavis/Projects/electron-test/api/node_modules/tabtab/.completions/sls.zsh

# Setup config file tracking
alias config='/usr/bin/git --git-dir=/Users/JackDavis/.cfg/ --work-tree=/Users/JackDavis'

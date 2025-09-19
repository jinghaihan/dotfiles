# https://ohmyz.sh/
export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

plugins=(git)

# https://brew.sh/
export PATH=/opt/homebrew/bin:$PATH

# https://github.com/spaceship-prompt/spaceship-prompt
source /opt/homebrew/opt/spaceship/spaceship.zsh
# https://github.com/zsh-users/zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
# https://github.com/zsh-users/zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export ELECTRON_MIRROR="https://npmmirror.com/mirrors/electron/"

alias nrp="nr -p"

function dir() {
  mkdir $1 && cd $1
}

function backup() {
  cp "$1"{,.bak}
}

function aux() {
 	ps aux | grep $1
}

# Git
function orphan() {
	if [ -z "$1" ]; then
			echo "Usage: orphan <new-branch-name>"
			return 1
	fi

	local branch_name="$1"

	git checkout --orphan latest_branch
	git branch -D "$branch_name"
	git branch -m "$branch_name"
 	git commit --no-verify --allow-empty -m "chore: initial commit"
 	git push -f origin "$branch_name"
	git branch --set-upstream-to=origin/"$branch_name" "$branch_name"
}

# Proxy
PROXY_HOST=127.0.0.1
PROXY_PORT=7890
PROXY="http://${PROXY_HOST}:${PROXY_PORT}"
SSH_CONFIG="$HOME/.ssh/config"

function proxy() {
	echo "✔ Enabling proxy: $PROXY"

	export http_proxy="$PROXY"
	export https_proxy="$PROXY"

	git config --global http.proxy "$PROXY"
  git config --global https.proxy "$PROXY"

	if grep -A 5 "^Host github.com" "$SSH_CONFIG" | grep -q "ProxyCommand"; then
    return
  fi

	sed -i.bak '/^Host github.com$/,/^Host /{
    /HostName github.com/a\
\	ProxyCommand nc -X 5 -x 127.0.0.1:7890 %h %p
  }' "$SSH_CONFIG"
}

function unproxy() {
	echo "✘ Disabling proxy"

	unset http_proxy
	unset https_proxy

	git config --global --unset http.proxy
  git config --global --unset https.proxy

	sed -i.bak '/^Host github.com$/,/^Host /{/ProxyCommand/d;}' "$SSH_CONFIG"
}

# Directories
function repos() {
  cd ~/code/repos/$1
}

function forks() {
  cd ~/code/forks/$1
}

function labs() {
  cd ~/code/labs/$1
}

function eb() {
  cd ~/code/eb/$1
}

function pf() {
  cd ~/code/eb/portal-framework/$1
}

# MacOS
function app() {
	sudo xattr -r -d com.apple.quarantine $1
}

function finderKit() {
	pluginkit -mAD -p com.apple.FinderSync -vvv
}

function useFinderKit() {
	pluginkit -e "use" -u $1
}

function ignoreFinderKit() {
	pluginkit -e "ignore" -u $1
}

function dock() {
	defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="small-spacer-tile";}'
	killall Dock
}

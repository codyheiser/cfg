## dotfile setup
The following instructions will allow you to seamlessly setup a new machine.

#### Prerequisites:
* `nodejs` installed (`brew install node` or `sudo apt install nodejs`)
* `zsh` set as default shell (`chsh -s /bin/zsh`)

#### 1. Install `oh-my-zsh` framework
```
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
```

#### 2. Clone this hidden `.cfg` repository
```
# setup alias to use "config" command instead of "git"
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# "hide" repo in home directory
echo ".cfg" >> .gitignore

# clone this GitHub repo into a "bare" directory and checkout files
git clone --bare https://github.com/codyheiser/cfg.git $HOME/.cfg
config checkout  # you may have to remove or stash old dotfiles before this

# tell "config" to ignore all the other stuff in your home directory
config config --local status.showUntrackedFiles no
```

#### 3. Install some nice plugins
```
# live terminal syntax highlighting is life-changing
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# pure prompt is undefeated
mkdir -p "$HOME/.zsh"
git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"

# z is a useful plugin for directory jumping
git clone https://github.com/agkozak/zsh-z $ZSH_CUSTOM/plugins/zsh-z
```

#### 4. `source .zshrc` and you're good to go

# Install Brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install git
git config --global init.defaultBranch main
git config --global user.email 'ken.mcgrady@gmail.com'
git config --global user.name 'Ken McGrady'
curl -fsSL https://git.io/vKZJ8 | sh
echo "Git is installed and configured"

# Install Terminal Profile
curl -fsSL https://raw.githubusercontent.com/ryansobol/sea-c17-ruby/master/class1/osx/Tomorrow%20Night%20Eighties.terminal

# Install the Shortcuts
# | Menu Title          | Keyboard Shortcut          | Symbols |
# |---------------------|----------------------------|---------|
# | Select Next Tab     | `Option` + `Command` + `→` | ⌥⌘→     |
# | Select Previous Tab | `Option` + `Command` + `←` | ⌥⌘←     |
# | Show Next Tab       | `Option` + `Command` + `→` | ⌥⌘→     |
# | Show Previous Tab   | `Option` + `Command` + `←` | ⌥⌘←     |

# Install Fish
echo -n 'Install Fish...'
brew install fish
echo 'done'
echo '/opt/homebrew/bin/fish' | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

# Install Python
echo -n 'Installing Pyenv...'
brew install xz
brew install pyenv
set -Ux PYENV_ROOT $HOME/.pyenv
fish_add_path $PYENV_ROOT/bin
echo 'done'

echo -n 'Installing Python...'
pyenv install 3.11
pyenv global 3.11.1
echo 'done'

# Install Node
echo -n 'Installing NVM...'
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
echo 'done'

echo -n 'Installing Node...'
nvm install 18
echo 'done'

# Configure Fish
echo -n 'Configuring Done...'
fish_update_completions
cp -r config/fish ~/.config
curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
omf install bass
echo 'done'

echo 'Completed'

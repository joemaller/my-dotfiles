#! /bin/bash

# setup for zsh add-ons and plugins.
# TODO: Untested, more to come


# Oh My Zsh!
# https://ohmyz.sh/
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"




# zsh nvm (also installs nvm)
# https://github.com/lukechilds/zsh-nvm
git clone https://github.com/lukechilds/zsh-nvm ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-nvm


# zsh syntax highlighting
# https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# my-dotfiles

Rather than a bunch of Gists I constantly lose...

As of May 2021, I'm experimenting with dotfile sync via the [bare git repo](https://www.atlassian.com/git/tutorials/dotfiles) workflow. The bare git repo is stored in **~/.my-dotfiles** and uses a pre-configured `config` alias to run git.

At minimum, this alias should be added to **.zshrc** or **.bashrc**:

```sh
alias config='$(which git) --git-dir=$HOME/.my-dotfiles --work-tree=$HOME'
```

Then configure the bare repo with this:

```sh
config config --local status.showUntrackedFiles no
```

then, run `config checkout` which will fail. Remove conflicting files and then run it again.

Don't run `config reset --hard`, it'll blow away all the untracked files.

config `checkout --force` might work too.

## Setup

Clone this repo to the home directory:

```sh
git clone  --bare  https://github.com/joemaller/my-dotfiles.git ~/.my-dotfiles
```

## Quick & dirty installation notes:

- Install the [Powerline10k](https://github.com/romkatv/powerlevel10k) theme<br>
  ```
  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
  ```
- Install [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting):<br>
  ```
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```

* Install Hack from [NerdFonts](https://www.nerdfonts.com)

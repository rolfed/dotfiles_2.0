# Dotfiles 2.0

Dotfiles 2.0 is a collection of development configurations. 

# Terminal Configuration

Clone Dotfiles repository.

```bash
cd ~/ && git clone git@github.com:rolfed/dotfiles_2.0.git && mv ~/dotfiles_2.0 ~/dotfiles
```

Install terminal Iceberg color them

```bash
1. Open Terminal
2. Go to Terminal > prefernces OR Command-Comma (,)
3. Import Iceberg theme 
```

Install ZSH OR Switch to ZSH
```bash
zsh --version
; zsh 5.7.1 (x86_64-apple-darwin19.0)

chsh -s /bin/zsh
```

Link .zshrc
```bash
ln -s ~/dotfiles/.zshrc ~/.zshrc
```
//TODO
Copy Config directory to root
```bash
cp -r ~/
```

Install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Nerd Fonts
```bash
brew tap homebrew/cask-eonts 
brew install --cask font-hack-nerd-font
```

Install Powerlevel10k
```bash
brew install romkatv/powerlinelevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
```

Install Pyenv
```bash
brew install pyenv
```

Configure Pyenv
```bash
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile

```


# Vim Configuration

Install Ultimate Vim [Configuration](https://github.com/amix/vimrc) 



## License
[MIT](https://choosealicense.com/licenses/mit/)

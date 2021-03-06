# Dotfiles 2.0

Dotfiles 2.0 is a collection of development configurations. 

## Installation

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

Install oh-my-zsh
```bash
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Install Powerlevel9k
```bash
brew tap sambadevi/powerlevel9k
brew install powerlevel9k
echo "source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme" >> ~/.zshrc
```

## Usage

```python
import foobar

foobar.pluralize('word') # returns 'words'
foobar.pluralize('goose') # returns 'geese'
foobar.singularize('phenomena') # returns 'phenomenon'
```

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License
[MIT](https://choosealicense.com/licenses/mit/)

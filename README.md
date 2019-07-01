# dotfiles

These are my dotfiles. They're managed using [GNU Stow](https://www.gnu.org/software/stow/),
but with a nice `Rakefile`.

## Installation

### Requirements

* [homebrew](http://brew.sh)
* [homebrew-bundle](https://github.com/Homebrew/homebrew-bundle)
* [vim-plug](https://github.com/junegunn/vim-plug)
* [base16-iterm2](https://github.com/chriskempson/base16-iterm2)

### Installing

Install stow:

```bash
$ brew install stow
```

Install the actual dotfiles:

```bash
$ rake
```

## Uninstallation

Just run:

```bash
$ rake uninstall
```

## License

What?

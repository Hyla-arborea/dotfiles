# Dotfiles
Repository of my personalized dotfiles and configurations used for vim editor, i3 window manager, git repositories etc (tested and work on Debian).

## Requirements
+ ### git

  `$ sudo apt-get install git-all`

+ ### vim editor

  `$ sudo apt-get install vim-gnome`

  Make sure your vim version supports Python, which is typical for versions >= 7.3.598. You can check this from within vim using `:echo has('python')`. It will return 1 if it has Python bindings or 0 if it does not. If the version is old, you may need to [compile vim from source](https://github.com/Valloric/YouCompleteMe/wiki/Building-Vim-from-source). The Python version compiled into vim must be 2.6 or later. You can check this by `:python import sys; print sys.version` from within vim.

+ ### Powerline Statusline plugin

  1. Installing Powerline Tool

    `$ pip install --user git+git://github.com/powerline/powerline`
  
  2. Installing Powerline Fonts
  
    1. Download the latest version of the symbol font and fontconfig file:
      ```
      $ wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
      $ wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
      ```
    
    2. Move the symbol font to a valid X font path. Valid font paths can be listed with `$ xset q`:
    
      `$ sudo mv PowerlineSymbols.otf /usr/share/fonts/`
    
    3. Update font cache for the path the font was moved to (root priveleges may be needed to update cache for the system-wide paths):
    
      `fc-cache -vf /usr/share/fonts/`
    
    4. Install the fontconfig file:
    
      `$ sudo mv 10-powerline-symbols.conf /etc/fonts/conf.d/`
    
    5. Patched fonts installation.
      The terminal emulator has to use a patched font to work properly with powerline-specific glyphs. Check [powerline-fonts](https://github.com/powerline/fonts) to access pre-patched versions of some popular, open-source coding fonts, or use [fontpatcher](https://github.com/powerline/fontpatcher) to patch custom fonts (see [powerline documentation](https://apw-bash-settings.readthedocs.io/en/latest/fontpatching.html) for the usage description).

+ ### [**Pathogen**](https://github.com/tpope/vim-pathogen) vim plugin manager

+ ### [**flake8**](https://pypi.python.org/pypi/flake8/) package

  `sudo apt-get install python-flake8` or `sudo pip install flake8`).

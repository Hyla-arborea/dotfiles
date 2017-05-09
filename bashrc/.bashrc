
if [ -f "/usr/local/etc/bashrc" ] ; then
    source /usr/local/etc/bashrc
fi

if [ -f "${HOME}/.bashrc_local" ] ; then
    source "${HOME}/.bashrc_local"
fi

if [ -f "${HOME}/.bashrc_interactive" ] ; then
    source "${HOME}/.bashrc_interactive"
fi


# (NN 16-04-2017)
# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

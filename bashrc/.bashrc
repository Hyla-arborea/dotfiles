
if [ -f "/usr/local/etc/bashrc" ] ; then
    source /usr/local/etc/bashrc
fi

if [ -f "${HOME}/.bashrc_local" ] ; then
    source "${HOME}/.bashrc_local"
fi

if [ -f "${HOME}/.bashrc_interactive" ] ; then
    source "${HOME}/.bashrc_interactive"
fi


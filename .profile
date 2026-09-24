# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# PATH helper (POSIX, shared with ~/.bash_fns)
. "$HOME/.path_fns"

# set PATH so it includes user's private bins if they exist
path_add -p "$HOME/bin"
path_add -p "$HOME/.local/bin"

# Go
path_add "/usr/local/go/bin"
path_add "$HOME/go/bin"

# Default editor
export SUDO_EDITOR="nvim"
export EDITOR="nvim"
export VISUAL="nvim"
export MANPAGER="nvim +Man!"

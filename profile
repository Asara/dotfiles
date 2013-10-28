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

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi


if [ -n "$SSH_TTY" ]
then
	echo -e "
\033[0;35m+++++++++++++++++: \033[0;37mSystem Data\033[0;35m :+++++++++++++++++++
+    \033[0;37mHostname \033[0;35m= \033[1;32m`hostname`
\033[0;35m+    \033[0;37mKernel \033[0;35m= \033[1;32m`uname -r`
\033[0;35m+    \033[0;37mUptime \033[0;35m= \033[1;32m`uptime | sed 's/^.*up \(.*\), .* user.*/\1/'`
\033[0;35m+    \033[0;37mMemory \033[0;35m= \033[1;32m`cat /proc/meminfo | grep MemTotal | awk {'print $2'}` kB
\033[0;35m++++++++++++++++++: \033[0;37mUser Data\033[0;35m :++++++++++++++++++++
+    \033[0;37mUsername \033[0;35m= \033[1;32m`whoami`
\033[0;35m+++++++++++++++++: \033[0;31mMessages\033[0;35m :++++++++++++++++++++
\033[0;31m+    \033[0;37mHave a great day!
\033[0;35m+++++++++++++++++++++++++++++++++++++++++++++++++++
"
fi

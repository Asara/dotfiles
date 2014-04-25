# Pacman/Yaourt
if command -v 'pacman' >/dev/null $$ [[ $?==0 ]]; then
    alias distro='echo Arch'
    alias install='yaourt -S '
    alias fupdate='echo "Updating system" && yaourt -Syyua --devel && echo "Cleaning" && sudo pacman -Rs $(pacman -Qtdq))'
    alias search='yaourt -Ss '
    alias paccache='paccache -rv'
fi

# Debian
if command -v 'apt-get' >/dev/null && [[ $?==0 ]]; then
    alias distro='echo Debian'
    alias install='sudo apt-get install '
    alias fupdate='sudo apt-get update && sudo apt-get upgrade && sudo apt-get dist-upgrade'
    alias search='sudo apt-cache search '
fi

# RHEL
if command -v 'yum' >/dev/null && [[ $?==0 ]]; then
    alias distro='echo Red Hat'
    alias install='sudo yum install '
    alias fupdate='sudo yum upgrade'
    alias search='sudo yum search '
fi

# Gentoo
if command -v 'emerge' >/dev/null && [[ $?==0 ]]; then
    alias distro='echo Gentoo'
    alias install='sudo emerge -av '
    alias fupdate='echo "Updating ports" && sudo emerge-webrsync && echo "Updating system" && sudo emerge --update --deep --with-bdeps=y --newuse --ask @world && echo "Cleaning" && sudo emerge --depclean'
    alias search='emerge --search '
fi


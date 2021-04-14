# config.fish

# [[file:../../notebook/config/fish/index.org::*config.fish][config.fish:1]]
set -x PATH $VIRTUAL_ENV/bin $HOME/bin $HOME/.local/bin $HOME/.cargo/bin $HOME/programs/bin $PATH /snap/bin $HOME/.local /sbin $HOME/.local/sbin /usr/local/sbin $HOME/.local/share/flatpak/exports/bin
set -U fish_features stderr-nocaret,qmark-noglob,regex-easyexc
set -x PAGER most
set -x VPM_LIBEXECDIR $HOME/bin/vpmlib
#set -x GOPROXY https://proxy.golang.org
set -x EDITOR code -w
set -x PLAN9 /usr/lib/plan9
#set -x GOPATH $HOME/go
#set -x PATH $PATH $PLAN9/bin $GOPATH/bin
set -x XDG_DATA_DIRS /usr/local/share:/usr/share:/var/lib/snapd/desktop:/var/lib/flatpak/exports/share/applications/:$HOME/.local/share:$HOME/.local/share/flatpak/exports/share
set -x PICO_SDK_PATH $HOME/projects/pico/sdk
set -x PICO_EXTRAS_PATH $HOME/projects/pico/extras
alias zile e
alias npr "npm run-script -s"
alias please "eval"
alias thanks "print_color green you\'re welcome\n"
# for things that needn't be sync'd
touch ~/.config/fish/config.local.fish
source ~/.config/fish/config.local.fish

function mkcd -a dir
  mkdir -p $dir
  cd $dir
end
# config.fish:1 ends here

# appmenu

# [[file:../../notebook/config/fish/index.org::*appmenu][appmenu:1]]
#set -x QT_QPA_PLATFORMTHEME appmenu-qt5
set -x GTK_MODULES "appmenu-gtk-module"
# appmenu:1 ends here

# devkitpro

# [[file:../../notebook/config/fish/index.org::*devkitpro][devkitpro:1]]
set -x DEVKITPRO /opt/devkitpro
set -x DEVKITARM $DEVKITPRO/devkitARM
set -x DEVKITPPC $DEVKITPRO/devkitPPC

set -x PATH $DEVKITPRO/tools/bin $PATH
# devkitpro:1 ends here

# volta

# [[file:../../notebook/config/fish/index.org::*volta][volta:1]]
set -x VOLTA_HOME ~/.cache/volta
set -x PATH $VOLTA_HOME/bin $PATH
# volta:1 ends here

# pyenv

# [[file:../../notebook/config/fish/index.org::*pyenv][pyenv:1]]
if which pyenv &> /dev/null
    pyenv init - | source
end
# pyenv:1 ends here

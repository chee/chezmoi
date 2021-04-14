# [[file:../../../notebook/config/fish/index.org::*package manager][package manager:5]]
switch (pkg_manager)
    case dnf
        alias upgrade "sudo dnf upgrade"
    case vpm
        alias upgrade "sudo vpm upgrade"
    case yay
        alias upgrade "yay"
    case pacman
        alias upgrade "sudo pacman -Syu"
    case apt
        alias upgrade "sudo apt update; sudo apt upgrade"
    case brew
        alias upgrade "brew update; brew upgrade"
    case emerge
        alias upgrade "echo who hurt you"
end
# package manager:5 ends here

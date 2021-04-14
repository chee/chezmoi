# [[file:../../../notebook/config/fish/index.org::*package manager][package manager:6]]
switch (pkg_manager)
    case dnf
        alias q "dnf info"
    case vpm
        alias q "vpm info"
     case yay
        alias q "yay -Si"
    case pacman
        alias q "pacman -Si"
    case apt
        alias q "apt-cache info"
    case brew
        alias q "brew info"
    case emerge
        alias q "echo who hurt you"
end
# package manager:6 ends here

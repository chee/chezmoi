# [[file:../../../notebook/config/fish/index.org::*package manager][package manager:3]]
switch (pkg_manager)
    case dnf
        alias search "dnf search"
    case vpm
        alias search "vpm search"
    case yay
        alias search "yay -Ss"
    case pacman
        alias search "pacman -Ss"
    case apt
        alias search "apt search"
    case brew
        alias search "brew search"
    case emerge
        alias search "echo who hurt you"
end
# package manager:3 ends here

# [[file:../../../notebook/config/fish/index.org::*package manager][package manager:4]]
switch (pkg_manager)
    case dnf
        alias remove "sudo dnf remove"
    case vpm
        alias remove "sudo vpm remove"
    case yay
        alias remove "yay -R"
    case pacman
        alias remove "sudo pacman -R"
    case apt
        alias remove "sudo apt remove"
    case brew
        alias remove "brew remove"
    case emerge
        alias remove "echo who hurt you"
end
# package manager:4 ends here

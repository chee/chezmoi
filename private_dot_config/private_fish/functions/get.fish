# [[file:../../../notebook/config/fish/index.org::*package manager][package manager:2]]
switch (pkg_manager)
    case dnf
        alias get "sudo dnf install"
    case vpm
        alias get "sudo vpm install"
    case xbps
        alias get "sudo xbps-install"
    case yay
        alias get "yay -S"
    case pacman
        alias get "sudo pacman -S"
    case apt
        alias get "sudo apt install"
    case brew
        alias get "brew install --force-bottle"
    case emerge
        alias get "echo who hurt you"
end
# package manager:2 ends here

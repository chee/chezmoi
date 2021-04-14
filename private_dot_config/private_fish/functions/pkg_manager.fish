# package manager
# this thing is so cool, it lets me get a package and upgrade without thinking about the os


# [[file:../../../notebook/config/fish/index.org::*package manager][package manager:1]]
if type -q dnf
    function pkg_manager
        echo -n dnf
    end
else if type -q vpm
    function pkg_manager
        echo -n vpm
    end
else if type -q yay
    function pkg_manager
        echo -n yay
    end
else if type -q pacman
    function pkg_manager
        echo -n pacman
    end
else if type -q pacman
    function pkg_manager
        echo -n pacman
    end
else if type -q brew
    function pkg_manager
        echo -n brew
    end
else if type -q apt
    function pkg_manager
        echo -n apt
    end
else if type -q emerge
    function pkg_manager
        echo -n emerge
    end
else
    function pkg_manager
        echo -n unknown
    end
end
# package manager:1 ends here

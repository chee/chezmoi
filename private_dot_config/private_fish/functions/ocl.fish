# [[file:../../../notebook/config/fish/index.org::*gcl and friends 🦊🦊🦊][gcl and friends 🦊🦊🦊:2]]
function ocl
    cd ~/projects/origami
    set dir $argv[1]

    if string match -r '^o-' $dir
        cd components
        set dir (string replace -r '^o-' '' $dir)
    else if string match -r '^origami-' $dir
        set dir (string replace -r '^origami-' '' $dir)
    end

    gcl git@github.com:Financial-Times/$argv[1] $dir
end
# gcl and friends 🦊🦊🦊:2 ends here

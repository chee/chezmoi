# gcl and friends 🦊🦊🦊

# [[file:../../../notebook/config/fish/index.org::*gcl and friends 🦊🦊🦊][gcl and friends 🦊🦊🦊:1]]
function gcl
    git clone --recursive $argv
    if [ -z $argv[2] ]
        set dir (basename $argv[1])
        set dir (string replace -r '.git$' '' $dir)
    else
        set dir $argv[2]
    end

    cd $dir
end
# gcl and friends 🦊🦊🦊:1 ends here

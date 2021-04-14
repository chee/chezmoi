# prompt
# #+name: prompt

# [[file:../../../notebook/config/fish/index.org::prompt][prompt]]
function fish_prompt -d "=^.^="
    # once we start settings colours and printing things, the last command's
    # status will go away, because we are successful.
    set -l s $status

    echo ""

    set -l eid (id -u $USER)
    set -l name (id -un $USER)

    if [ $eid -eq 0 ]
        print_color red $name
        set prompt_char '# '
    else
        print_color blue $name
        set prompt_char '$ '
    end

    if set --query SSH_CLIENT
        set -l host (hostname -s)
        print_color grey "@$host "
    else
        printf " "
    end

    #print_color black (prompt_pwd)
    echo -n (prompt_pwd) (fish_git_prompt)
    echo

    if [ $s -ne 0 ]
        set_color -o red
        echo -n "($s) "
        set_color normal
    end

    if set -q VIRTUAL_ENV
        set -l venv_name (basename (dirname "$VIRTUAL_ENV"))

        # if [ -e $VIRTUAL_ENV/pyvenv.cfg ]
        #     set venv_name (awk '/prompt/ {gsub(/\'/, ""); print $3}' < $VIRTUAL_ENV/pyvenv.cfg)
        # end

        echo -n -s (set_color blue) "(" $venv_name ")" (set_color normal) " "
    end

    echo $prompt_char
end
# prompt ends here

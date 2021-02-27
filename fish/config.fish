set TERM "xterm-256color"
set EDITOR "vim"
set VISUAL "kwrite"

thefuck --alias | source

set PATH /home/kai/bin $PATH

set GDK_SCALE 2

function fish_prompt
    set_color $fish_color_user
    echo -n (whoami)
    set_color normal
    echo -n @
    set_color $fish_color_host
    echo -n Lilim
    set_color normal
    echo -n :
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color normal
    echo -n ' > '
end

function c 
 cd $argv[1]
 ls -l 
 end
function fish_prompt
 printf '%s' (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
 printf '\n> '
end 
set fish_prompt_pwd_dir_length 0
source ~/.aliases
cd ~

#/etc/profile
export HISTTIMEFORMAT="%Y-%m-%d %H:%M:%S "
export PROMPT_COMMAND="history -a"
readonly export PROMPT_COMMAND='{ msg=$(history 1 | { read x y; echo $y; });logger -i -t "xxxx-sys" "#!#whoami=$(whoami)"#!#who am i=$(who am i)#!#pwd=$(pwd)#!#history="$msg"#!#; }'

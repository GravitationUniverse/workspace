path=~/Fast_move/stack
path2=~/Fast_move
current_path=$(pwd)
if [ "$1" = "-s" ]; then
  echo $current_path > $path/home
  home=$current_path
elif [ "$1" = "-l" ]; then
  home=$(cat "$path/home" 2>/dev/null)
  echo $home
else
  if ls $path/home 2>/dev/null 1>/dev/null; then
    home=$(cat "$path/home")
  else
    echo $current_path > $path/home
    home=$current_path
  fi
  if [ "$current_path" != "$home" ]; then
    command="source $path2/c $home"
    eval $command 1>/dev/null 2>/dev/null
  fi
fi


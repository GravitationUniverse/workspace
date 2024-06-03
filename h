path="/var/stack"
if [ "$1" = "-h" ]; then
  current_path=$(pwd)
  echo $current_path > $path/home
  home=$current_path
elif [ "$1" = "-l" ]; then
  home=$(cat "$path/home" 2>/dev/null)
  echo $home
else
  if ls $path/home 2>/dev/null 1>/dev/null; then
    home=$(cat "$path/home")
  else
    current_path=$(pwd)
    echo $current_path > $path/home
    home=$current_path
  fi
  command="source c '$home'"
  eval $command 1>/dev/null 2>/dev/null
fi


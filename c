path=~/Fast_move/stack
current_path=$(pwd)
pushd $@ 1>/dev/null 2>/dev/null
stack_first_path=$(dirs|awk -F' ' '{printf $1}')
stack_second_path=$(dirs|awk -F' ' '{printf $2}')
rm -f $path/front 2>/dev/null
if [ "$stack_first_path" == "$stack_second_path" ]; then
  popd 1>/dev/null 2>/dev/null
fi

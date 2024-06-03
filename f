path='/var/stack'
current_path=$(pwd)
stack_first_path=$(dirs|awk -F' ' '{printf $1}')
lines=$(cat $path/front 2>/dev/null |wc -l ||echo 0)
if [ $lines -ge 1 ]; then
  move_path=$(sed -n '$p' $path/front)
  pushd $move_path 1>/dev/null 2>/dev/null
  sed -i '$d' $path/front
fi

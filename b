path='/var/stack'
current_path=$(pwd)
#stack_first_path=$(dirs|awk -F' ' '{printf $1}')
field_count=$(dirs|awk -F' ' '{printf NF}')
if [ $field_count -gt 1 ]; then
  if !(ls $path/front 2>/dev/null 1>/dev/null); then
    echo $current_path > $path/front
    popd 1>/dev/null 2>/dev/null
  else
    last_path=$(dirs | awk -F' ' '{printf $NF}')
    if [ "$currnet_path" != "$last_path" ]; then
      move_path=$(sed -n '$p' $path/front 2>/dev/null)
      if [ "$current_path" != "$move_path" ]; then
        echo $current_path >> $path/front
      fi
      popd 1>/dev/null 2>/dev/null
    fi
  fi
fi

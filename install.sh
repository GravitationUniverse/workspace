path1=~/Fast_move
path2=~/Fast_move/stack
error_check1=0
error_check2=0
error_check3=0
error_check4=0
error_check5=0
error_check6=0
error_check7=0
error_check8=0
error_check9=0
error_check10=0
error_check11=0
if [ ! -d "$path1" ]; then
  mkdir $path1 2>/dev/null
fi
if ! grep -xq "alias h='source $path1/h'" ~/.bashrc; then
  error_check1=0
else
  error_check1=1
fi
if ! grep -xq "alias f='source $path1/f'" ~/.bashrc; then
  error_check2=0
else
  error_check2=1
fi
if ! grep -xq "alias b='source $path1/b'" ~/.bashrc; then
  error_check3=0
else
  error_check3=1
fi
if ! grep -xq "alias cd='source $path1/c \$@'" ~/.bashrc; then
  error_check4=0
else
  error_check4=1
fi
if ! grep -xq "alias l='ll -ist'" ~/.bashrc; then
  error_check5=0
else
  error_check5=1
fi
if [ ! -f "$path1/h" ]; then
  error_check6=0
else
  error_check6=1
fi
if [ ! -f "$path1/f" ]; then
  error_check7=0
else
  error_check7=1
fi
if [ ! -f "$path1/b" ]; then
  error_check8=0
else
  error_check8=1
fi
if [ ! -f "$path1/c" ]; then
  error_check9=0
else
  error_check9=1
fi
if [ ! -f "$path2/home" ]; then
  error_check10=0
else
  error_check10=1
fi
if [ ! -f "$path2/front" ]; then
  error_check11=0
else
  error_check11=1
fi
if [ $error_check1 = 0 ] && [ $error_check2 = 0 ] && [ $error_check3 = 0 ] && [ $error_check4 = 0 ] && [ $error_check5 = 0 ] && [ $error_check6 = 0 ] && [ $error_check7 = 0 ] && [ $error_check8 = 0 ] && [ $error_check9 = 0 ] && [ $error_check10 = 0 ] && [ $error_check11 = 0 ]; then
  mkdir -p $path2
  chmod 777 $path2
  echo "alias h='source $path1/h'" >> ~/.bashrc
  echo "alias f='source $path1/f'" >> ~/.bashrc
  echo "alias b='source $path1/b'" >> ~/.bashrc
  echo "alias cd='source $path1/c \$@'" >> ~/.bashrc
  echo "alias l='ll -ist'" >> ~/.bashrc
  mv h $path1
  mv f $path1
  mv b $path1
  mv c $path1
  source ~/.bashrc
else
  if [ $error_check1 = 1 ]; then
    echo "Already existing 'h' command!"
  elif [ $error_check2 = 1 ]; then
    echo "Already existing 'f' command!"
  elif [ $error_check3 = 1 ]; then
    echo "Already existing 'b' command!"
  elif [ $error_check4 = 1 ]; then
    echo "Already existing 'cd' command!"
  elif [ $error_check5 = 1 ]; then
    echo "Already existing 'l' command!"
  elif [ $error_check6 = 1 ]; then
    echo "Already existing '$path1/h' file!"
  elif [ $error_check7 = 1 ]; then
    echo "Already existing '$path1/f' file!"
  elif [ $error_check8 = 1 ]; then
    echo "Already existing '$path1/b' file!"
  elif [ $error_check9 = 1 ]; then
    echo "Already existing '$path1/c' file!"
  elif [ $error_check10 = 1 ]; then
    echo "Already existing '$path2/home' file!"
  elif [ $error_check11 = 1 ]; then
    echo "Already existing '$path2/front' file!"
  fi
fi

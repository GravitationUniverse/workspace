**____**FAST_MOVE_install**____**(){
echo "#### Installing... ####"
local path="foryou-Fast_move"
local pakage_check=$(rpm -qa |grep unzip)
if [ "$pakage_check" = "" ]; then
  yum install unzip -y 1>/dev/null 2>/dev/null
fi
local dir_check=$(ls "$path" 2>/dev/null)
if [ "$zip_file_check" = "" ]; then
  curl -LJO https://github.com/GravitationUniverse/foryou/archive/Fast_move.zip 1>/dev/null 2>/dev/null
  yes|unzip foryou-Fast_move.zip 1>/dev/null 2>/dev/null
  local tar_file="$(ls "$path/" 2>/dev/null |grep tar)"
  tar -xvf "$path/$tar_file" 1>/dev/null 2>/dev/null 
fi
local path1=~/Fast_move
local path2=$path1/stack
local error_check0=0
local error_check1=0
local error_check2=0
local error_check3=0
local error_check4=0
local error_check5=0
local error_check6=0
local error_check7=0
local error_check8=0
local error_check9=0
local error_check10=0
local error_check11=0
local error_check12=0
if [ -d "$path1" ]; then
  local error_check0=1
fi
if grep "alias h=" ~/.bashrc 1>/dev/null 2>/dev/null; then
  local error_check1=1
fi
if grep "alias f=" ~/.bashrc 1>/dev/null 2>/dev/null; then
  local error_check2=1
fi
if grep "alias b=" ~/.bashrc 1>/dev/null 2>/dev/null; then
  local error_check3=1
fi
if grep "alias cd=" ~/.bashrc 1>/dev/null 2>/dev/null; then
  local error_check4=1
fi
if grep "alias l=" ~/.bashrc 1>/dev/null 2>/dev/null; then
  local error_check5=1
fi
if grep "alias q=" ~/.bashrc 1>/dev/null 2>/dev/null; then
  local error_check6=1
fi
if [ -f "$path1/h" ]; then
  local error_check7=1
fi
if [ -f "$path1/f" ]; then
  local error_check8=1
fi
if [ -f "$path1/b" ]; then
  local error_check9=1
fi
if [ -f "$path1/c" ]; then
  local error_check10=1
fi
if [ -f "$path2/home" ]; then
  local error_check11=1
fi
if [ -f "$path2/front" ]; then
  local error_check12=1
fi
if [ $error_check0 = 0 ] && [ $error_check1 = 0 ] && [ $error_check2 = 0 ] && [ $error_check3 = 0 ] && [ $error_check4 = 0 ] && [ $error_check5 = 0 ] && [ $error_check6 = 0 ] && [ $error_check7 = 0 ] && [ $error_check8 = 0 ] && [ $error_check9 = 0 ] && [ $error_check10 = 0 ] && [ $error_check11 = 0 ] && [ $error_check12 = 0 ]; then
  mkdir $path1 2>/dev/null
  mkdir -p $path2
  chmod 777 $path2
  echo "alias h='source $path1/h'" >> ~/.bashrc
  echo "alias f='source $path1/f'" >> ~/.bashrc
  echo "alias b='source $path1/b'" >> ~/.bashrc
  echo "alias cd='source $path1/c \$@'" >> ~/.bashrc
  echo "alias l='ll -ist'" >> ~/.bashrc
  echo "alias q='source $path1/c ..'" >> ~/.bashrc
  mv h $path1
  mv f $path1
  mv b $path1
  mv c $path1
  source ~/.bashrc
  >$path1/install_check
  echo "#### Finished !! ####"
else
  if [ $error_check0 = 1 ]; then
    echo "Already existing '$path1' dir!"
  elif [ $error_check1 = 1 ]; then
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
    echo "Already existing 'q' command!"
  elif [ $error_check7 = 1 ]; then
    echo "Already existing '$path1/h' file!"
  elif [ $error_check8 = 1 ]; then
    echo "Already existing '$path1/f' file!"
  elif [ $error_check9 = 1 ]; then
    echo "Already existing '$path1/b' file!"
  elif [ $error_check10 = 1 ]; then
    echo "Already existing '$path1/c' file!"
  elif [ $error_check11 = 1 ]; then
    echo "Already existing '$path2/home' file!"
  elif [ $error_check12 = 1 ]; then
    echo "Already existing '$path2/front' file!"
  fi
fi
}
**____**FAST_MOVE_install**____**

path=~/Fast_move
alias_line="alias f='source $path/f'"
sed -i "\|$alias_line|d" ~/.bashrc
path=~/Fast_move
alias_line="alias h='source $path/h'"
sed -i "\|$alias_line|d" ~/.bashrc
path=~/Fast_move
alias_line="alias b='source $path/b'"
sed -i "\|$alias_line|d" ~/.bashrc
path=~/Fast_move
alias_line="alias cd='source $path/c \$@'"
sed -i "\|$alias_line|d" ~/.bashrc
path=~/Fast_move
alias_line="alias l='ll -ist'"
sed -i "\|$alias_line|d" ~/.bashrc
unalias cd 2>/dev/null
unalias h 2>/dev/null
unalias f 2>/dev/null
unalias b 2>/dev/null
unalias l 2>/dev/null
mv $path/f $path/h $path/b $path/c . 2>/dev/null
rm ~/Fast_move -rdf 2>/dev/null
dirs -c
source ~/.bashrc



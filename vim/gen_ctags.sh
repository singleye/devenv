#!/bin/sh

PROJECT_PATH=$1
if [ -z $PROJECT_PATH ]; then
    echo "You need to specify a project name"
    exit 1
fi

PROJECT=$(basename $PROJECT_PATH)

FILELIST="/tmp/$PROJECT.filelist"
echo "Project: $PROJECT"
echo "Path: $PROJECT_PATH"
echo "List file: $FILELIST"

# Use 'pwd' to build the file list with full path rather than relative path.
# This is useful for cscope for finding the symbols in vim.
find $PROJECT_PATH -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.h" -o -name "*.hpp" > $FILELIST
cscope -bq -i $FILELIST
ctags -L $FILELIST


rm -f ~/.vim/projects/$PROJECT/cscope.*
rm -f ~/.vim/projects/$PROJECT/tags

mkdir -p ~/.vim/projects/$PROJECT
mv cscope.* ~/.vim/projects/$PROJECT
mv tags ~/.vim/projects/$PROJECT

grep -v "^\" Project: $PROJECT" ~/.vimrc | grep -v "^set tags.*$PROJECT\/tags" | grep -v "^cs add.*$PROJECT\/cscope.out" > /tmp/.vimrc.new

echo >> /tmp/.vimrc.new
echo "\" Project: $PROJECT" >> /tmp/.vimrc.new
echo "set tags+=~/.vim/projects/$PROJECT/tags" >> /tmp/.vimrc.new
echo "cs add ~/.vim/projects/$PROJECT/cscope.out" >> /tmp/.vimrc.new

mv -f /tmp/.vimrc.new ~/.vimrc

rm -f $FILELIST

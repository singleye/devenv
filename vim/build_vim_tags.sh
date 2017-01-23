#!/bin/sh

PROJECT=$1
if [ -z $PROJECT ]; then
    echo "You need to specify a project name"
    exit 1
fi

find `pwd` -name "*.c" -o -name "*.cpp" -o -name "*.cc" -o -name "*.h" -o -name "*.hpp" > .filelist
cscope -bq -i .filelist
ctags -L .filelist

rm -f ~/.vim/projects/$PROJECT/cscope.*
rm -f ~/.vim/projects/$PROJECT/tags

mkdir -p ~/.vim/projects/$PROJECT
mv cscope.* ~/.vim/projects/$PROJECT
mv tags ~/.vim/projects/$PROJECT

grep -v "^\" Project: $PROJECT" ~/.vimrc | grep -v "^set tags.*$PROJECT\/tags" | grep -v "^cs add.*$PROJECT\/cscope.out" > ~/.vimrc.new

echo >> ~/.vimrc.new
echo "\" Project: $PROJECT" >> ~/.vimrc.new
echo "set tags+=~/.vim/projects/$PROJECT/tags" >> ~/.vimrc.new
echo "cs add ~/.vim/projects/$PROJECT/cscope.out" >> ~/.vimrc.new

mv -f ~/.vimrc.new ~/.vimrc

rm -f .filelist

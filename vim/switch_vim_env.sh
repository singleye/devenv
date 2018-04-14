#!/bin/sh


ENV=$1


function usage {
    echo "Please specify the vim env:"
    echo "  Options:"
    echo "    'environement/simplified': select the simplified version, response quickly"
    echo "    'environement/adv': select the advanced version, response slower"
    echo "    'environement/cutomized': select the customized version"
    echo "  Example: $0 environment/simplified"
}

if [ ! -d $ENV ]; then
    echo "$ENV doesn't not exist!"
    usage
    exit 1
fi

if [ ! -d $ENV/.vim -o ! -e $ENV/.vimrc ]; then
    echo "$ENV is not a valid vim env"
    usage
    exit 2
fi

# cleanup the link files under home directory
rm -f ~/.vim/projects
rm -rf ~/.vim*

ENV_ABSOLUTE_DIR=$(cd $ENV; pwd)
for f in `ls -d $ENV_ABSOLUTE_DIR/.vim*`
do
    FILENAME=$(basename $f)
    ln -s $ENV_ABSOLUTE_DIR/$FILENAME ~/$FILENAME
done

PROJECT_TAG_DIR="$ENV_ABSOLUTE_DIR/../../projects"

if [ ! -e $PROJECT_TAG_DIR ]; then
    mkdir -p $PROJECT_TAG_DIR
fi

ln -s $PROJECT_TAG_DIR ~/.vim/projects

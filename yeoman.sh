#!/bin/bash

temp_dir="`mktemp -d /tmp/yeoman.XXXXX`"

if [ -d app ]
then
    echo "\"app\" directory exists. please remove \"app\" directory."
    exit 1
fi
cp -rf * ${temp_dir}
mv ${temp_dir} ./app

while test "$1" != ""
do
    yeoman_options="${yeoman_options} $1"
    shift
done

yeoman ${yeoman_options}

rm -rf app

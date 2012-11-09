#!/bin/bash
# both $1 and $2 are paths
# returns $2 relative to $1
absolute=`readlink -f "$2"`
current=`readlink -f "$1"`
# Perl is magic
# Quoting horror.... spaces cause problems, that's why we need the extra " in here:
relative=$(perl -MFile::Spec -e 'print File::Spec->abs2rel("'"$absolute"'","'"$current"'")')

echo $relative

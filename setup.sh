#!/usr/bin/env sh

this_dir=$(dirname "$0")
this_file=$(basename "$0")

display_help() {
    echo "Use this script to install or uninstall the theme.

Usage:

    $ $this_file [install | uninstall] DIR

Example: install theme to typical htdocs location:

    $ $this_file install /var/www/localhost/htdocs/pico/themes"
}

install() {
    themes_dir=$1
    mkdir -p "$themes_dir"/noir
    cp -r "$this_dir"/src/* "$themes_dir"/noir
}

uninstall() {
    themes_dir=$1
    rm -r "$themes_dir"/noir
}

if [ $# -lt 2 ]; then
    echo 'Error: not enough arguments' 1>&2
    echo
    display_help
    exit 1
fi

if [ "$1" = install ]; then
    install "$2"
elif [ "$1" = uninstall ]; then
    uninstall "$2"
else
    echo "Error: unrecognized command $1" 1>&2
    echo
    display_help
    exit 1
fi


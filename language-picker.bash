#!/bin/bash

PS3="Select your language please: "

select lng in HTML5 python quit
do
    case $lng in
        "HTML5")
            bash "$lng"-project.bash;;
        "python")
            bash "$lng"-project.bash;;
        "quit")
           exit
    esac
done
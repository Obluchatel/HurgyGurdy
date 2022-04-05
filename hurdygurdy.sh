for string in "$@"
    do
        echo "Looking for" $string "in system files"
            for folders in $(ls /)
                do
                    for file in $(find /$folders -type f -perm -o=r  -not -path "/opt/*" -prune -not -path "/proc/*" -prune -not -path "/boot/*" -prune -not -path "/dev/*" -prune -not -path "/lost+found/*" -prune -not -path "/media/*" -prune -not -path "/run/*" -prune -not -path "/sys/*" -prune -not -path "/lib/*" -prune -not -path "/srv/*")
                    do
                    if grep -r $string $file
                    then
                        echo pattern found in $file
                    else
                    continue
                    fi
                done
            done
        done
echo DONE, Have a nice day!

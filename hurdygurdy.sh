declare -a array
array=(1 2 3)
for string in "${array[@]}"
    do
        echo "Looking for" $string "in system files"
            for folders in $(ls /)
                do
                    for file in $(find /$folder -type f -perm -o=r)
                    do
                    if grep -r --exclude=*.{png} $string $file
                    then
                        echo pattern found in $file
                    else
                    continue
                    fi
                done
            done
        done
echo DONE, Have a nice day!

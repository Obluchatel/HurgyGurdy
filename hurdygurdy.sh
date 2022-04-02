## Variables ##
list_of_folders_in_root=$(ls /)
## Functions ##
check_content_of_folder(){
    echo $1 "directory has:"
    ls /$1
}
## Main ##

for items in $list_of_folders_in_root
do 
if [[ $items = *srv* ]] || [[ $items = *proc* ]] || [[ $items = *mnt* ]] || [[ $items = *lib* ]] || [[ $items = *root* ]] || [[ $items = *lost+found* ]]; then
    # echo "its $items directory and we are not interested in" $items
    continue
else
    if [[ -z $(ls /$items) ]]; then
        echo "folder $items is empty"
    # echo "We are checking content of ***$items*** directory and listing its files"

    # echo $items "directory has:"
    else # ls /$items
        check_content_of_folder $items
    fi
fi
    
done

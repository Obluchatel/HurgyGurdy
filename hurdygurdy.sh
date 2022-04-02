read -p "Enter string you want to find: " searched_string
## Variables ##
list_of_folders_in_root=$(ls /)
## Functions ##
check_content_of_folder(){
    echo $forlders "directory has:"
    ls /$folders
}
## Main ##

for folders in $list_of_folders_in_root
do 
if [[ $folders = *srv* ]] || [[ $folders = *proc* ]] || [[ $folders = *mnt* ]] || [[ $folders = *lib* ]] || [[ $folders = *root* ]] || [[ $folders = *lost+found* ]]; then
    continue
else
    if [[ -z $(ls /$folders) ]]; then
        echo "folder $folders is EMPTY"
    else 
        check_content_of_folder $folders
    fi
fi
    
done

SAVE_IFS=$IFS
IFS=$(echo -en "\n\b") # echo -n do not append a newline echo; -e enable interpretation of the following backslash escapes; Newline character(\n); \b backspace. You can find more informations on https://www.linuxshelltips.com/use-echo-in-bash-script/
for row in `cat file.txt`  # This csv file contains two columns: 1rst (old_name); 2nd (new_name)
do
    old_name=`echo $row | awk -F " " '{print $1}'` # print each line of the first column
    new_name=`echo $row | awk -F " " '{print $2}'` # print each line of the second column
    mv $old_name $new_name
done
IFS=$SAVE_IFS

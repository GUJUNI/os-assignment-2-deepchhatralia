
read -p "Enter file name : " file

if [ -f $file ]
then
        count=$(grep "[aeiouAEIOU]" $file | wc -l)
        echo "Count : " $count
else
        echo "File does not exist"
fi

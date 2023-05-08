
read -p "Enter file name : " file

if [ -f $file ]
then
        grep "^[ ]" $file
else
        echo "File does not exists"
fi
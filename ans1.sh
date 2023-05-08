
read -p "Enter file name : " file

if [ -f $file ]
then
        grep "^[abc]" $file
else
        echo "File does not exists"
fi
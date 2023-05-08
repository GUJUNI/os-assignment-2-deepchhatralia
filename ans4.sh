
read -p "Enter file name : " file

if [ -f $file ]
then
        sed 's/ /#/' $file
else
        echo "File does not exist"
fi
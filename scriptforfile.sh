FILE="/var/lib"
if [ -f "$FILE" ]
then
    echo " it is a regular file"
    exit 0
elif [ -d "$FILE" ]
then
    echo " it is directory"
    exit 1
else
    echo "other type of file"
    exit 2
fi


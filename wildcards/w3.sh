DATE=$(date +%F)

read -p "Pleace enter the file extension: " EXTENSION

read -p "Pleace enter the prifix:(default is $DATE) " PREFIX

for NAME in *.$EXTENSION
 do
   if [ "$PREFIX" != "$DATE" ]
     then  
       echo "Renaming $NAME to $PREFIX-$NAME"
       mv $NAME $PREFIX-$NAME
   else 
       echo "renaming $NAME to $DATE-$NAME"
       mv $NAME $DATE-$NAME
   fi
 done


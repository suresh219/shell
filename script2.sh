cat /var/lib
if [ "$?" -eq 0 ]
then
  echo "Command Succeeded"
  exit 0
else
  echo " Coomand Failed"
  exit 1
fi
 

# not working
#cat /var/lib && echo "command succeeded" ; echo $? && echo "Command failed"

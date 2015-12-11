if [ -z "$1" ] || [ -z "$2" ];
then
   echo "Useage: MAPPED_DIRECTORY GULP_TASK"
else
   docker run -it -v $1:/gulp gulp gulp $2
fi

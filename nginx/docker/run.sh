if [ -z "$1" ] || [ -z "$2" ] || [ -z "$3" ];
then
   echo "Useage: CONTAINER_NAME PORT MAPPED_DIRECTORY"
else
   docker run -it -p $2:80 -p 443:443 --name $1 -v $3:/www nginx
fi

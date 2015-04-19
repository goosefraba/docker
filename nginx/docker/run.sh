if [ -z "$1" ] || [ -z "$2" ];
then
   echo "Useage: PORT MAPPED_DIRECTORY"
else
   docker run -i -t -p $1:80 -p 443:443 -v $2:/www nginx
fi

#/bin/bash

docker run -d -p 9200:9200 -p 9300:9300 -v $2:/data $1 /elasticsearch/bin/elasticsearch -Des.config=/elasticsearch/config/elasticsearch.yml
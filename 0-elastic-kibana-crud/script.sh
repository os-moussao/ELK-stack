USER=elastic
PASSWORD=$(echo y | docker exec -i elasticsearch /usr/share/elasticsearch/bin/elasticsearch-reset-password -u elastic 2> /dev/null | grep "New value:" | awk '{print $3}')
KIBANA_TOKEN=$(docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana 2> /dev/null)
echo "USER=$USER" > ./credentials/credentials.txt
echo "PASSWORD=$PASSWORD" >> ./credentials/credentials.txt
echo "KIBANA_TOKEN=$KIBANA_TOKEN" >> ./credentials/credentials.txt
docker cp elasticsearch:/usr/share/elasticsearch/config/certs/http_ca.crt ./credentials
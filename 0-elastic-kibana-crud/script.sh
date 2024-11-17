KIBANA_TOKEN=$(docker exec -it elasticsearch /usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana 2> /dev/null | grep -v WARNING)
KIBANA_VERIFICATION_CODE=$(docker exec kibana bin/kibana-verification-code | grep "verification code is:" | awk '{print $5 $6}' 2> /dev/null)
echo "KIBANA_TOKEN=$KIBANA_TOKEN" > ./credentials/credentials.txt
echo "KIBANA_VERIFICATION_CODE=$KIBANA_VERIFICATION_CODE" >> ./credentials/credentials.txt
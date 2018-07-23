curl -X POST -k https://localhost:1026/v1/queryContext \
  --header "fiware-service:light_control" \
  --header "fiware-servicepath:/light_control" \
  --header "Content-Type:application/json" \
  --header "Accept:application/json" -d \
  '{"entities": [{"id": "Raspberry:rasp1"}]}'

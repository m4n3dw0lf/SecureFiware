curl -X POST -k https://localhost:1026/v1/queryContext \
  --header "fiware-service:raspberry" \
  --header "fiware-servicepath:/raspberry" \
  --header "Content-Type:application/json" \
  --header "Accept:application/json" -d \
  '{"entities": [{"id": "Raspberry:rasp1"}]}'

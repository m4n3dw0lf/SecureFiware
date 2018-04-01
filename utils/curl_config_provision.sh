curl -X POST -k https://localhost:4041/iot/services \
  --header "fiware-service:raspberry" \
  --header "fiware-servicepath:/raspberry" \
  --header "Content-Type:application/json" -d  '{
    "services": [
      {
        "resource": "/raspberry",
        "apikey": "",
        "type": "Raspberry",
        "commands": [],
        "attributes": [
          {
            "name": "Light",
            "type": "string"
          }
        ]
      }
    ]
  }'

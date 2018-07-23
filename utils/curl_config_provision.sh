curl -X POST -k https://localhost:4041/iot/services \
  --header "fiware-service:light_control" \
  --header "fiware-servicepath:/light_control" \
  --header "Content-Type:application/json" -d  '{
    "services": [
      {
        "resource": "/light_control",
        "apikey": "",
        "type": "Light Control",
        "commands": [],
        "attributes": [
          {
            "name": "On/Off",
            "type": "Boolean"
          }
        ]
      }
    ]
  }'


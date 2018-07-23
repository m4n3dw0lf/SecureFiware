curl -X POST -k https://localhost:4041/iot/devices \
  --header "fiware-service:light_control" \
  --header "fiware-servicepath:/light_control" \
  --header "Content-Type:application/json" -d '{
    "devices": [
      {
        "device_id": "rasp1",
        "entity_type": "Raspberry",
        "attributes": [
          {
            "name": "On/Off",
            "type": "Boolean"
          }
        ],
        "internal_attributes": {
          "lwm2mResourceMapping": {
            "On/Off" : {
              "objectType": 3311,
              "objectInstance": 0,
              "objectResource": 5850 
            }
          }
        }
      }
    ]
  }'

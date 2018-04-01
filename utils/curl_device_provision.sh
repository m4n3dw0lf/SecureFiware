curl -X POST -k https://localhost:4041/iot/devices \
  --header "fiware-service:raspberry" \
  --header "fiware-servicepath:/raspberry" \
  --header "Content-Type:application/json" -d '{
    "devices": [
      {
        "device_id": "rasp1",
        "entity_type": "Raspberry",
        "attributes": [
          {
            "name": "Light",
            "type": "string"
          }
        ],
        "internal_attributes": {
          "lwm2mResourceMapping": {
            "Light" : {
              "objectType": 3311,
              "objectInstance": 0,
              "objectResource": 0
            }
          }
        }
      }
    ]
  }'

- To launch the service, use the following command:
```
docker-compose up
```

# Result
```json
{
    "predictions": [
        {
            "label": "beagle",
            "probability": 0.8513785600662231
        },
        {
            "label": "bluetick",
            "probability": 0.06882175803184509
        },
        {
            "label": "redbone",
            "probability": 0.024666721001267433
        },
        {
            "label": "quilt",
            "probability": 0.006081325933337212
        },
        {
            "label": "Greater_Swiss_Mountain_dog",
            "probability": 0.005882738623768091
        }
    ],
    "success": true
}
```

TODO:
1. config file more flexiable
2. think of a way to load model when build instead load when the first request come
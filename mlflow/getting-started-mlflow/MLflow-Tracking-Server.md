# [MLflow Tracking Server](https://mlflow.org/docs/latest/tracking/server.html)

## Start the Tracking Server
To Start the tracking server, runn the following command:

```
mlflow server --host 127.0.0.1 --port 8080
```


## Configure Server



### Backend Store

```
mlflow server --backend-store-uri sqlite:///my.db

```

### Remote artifacts store


```
mlflow server \
    --host 0.0.0.0 \
    --port 8885 \
    --artifacts-destination s3://my-bucket
```

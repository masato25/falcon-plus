kubectl apply -f ./pod/store.yml
kubectl cp $GOPATH/src/github.com/open-falcon/falcon-plus/scripts/mysql/db_schema/ databases:/tmp/
kubectl cp ./init_db.sh databases:/tmp/db_schema


# create database
kubectl exec -it databases bash
```
cd /tmp/db_schema
./init_db.sh
exit
```


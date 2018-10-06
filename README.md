# オレオレCAおよび証明書をつくる

## オレオレCAをつくる

```
docker-compose run cert init-ca <CN>
```

## オレオレCAで証明書をつくる

```
docker-compose run cert new-cert <CN>
```
# syspass
- syspass
- mariadb
- adminer

## structure on disk
```
~/app-data/syspass
  - docker-compose.yaml
  [backup]
```

## SecretHub/Vault

should be done something like this:
```
secrethub repo init evismo/syspass
secrethub mkdir evismo/syspass/prod
secrethub mkdir evismo/syspass/prod/docker
secrethub mkdir evismo/syspass/prod/docker/caddy
echo "it@evismo.com" | secrethub write evismo/syspass/prod/docker/caddy/email
```

## Docker

```
cd ~/app-data/syspass
docker-compose down && docker-compose up -d
```

## Backup
can be created in the GUI, download from there or go the volume
`cd /var/snap/docker/common/var-lib-docker/volumes/syspass_syspass-backup/_data`

## Upgrade

1. create a backup
2. change the syspass and db in the compose file
3. do the down/up

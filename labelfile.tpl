caddy.address=pass.evismo.ch
caddy.proxy.websocket=
caddy.proxy.transparent=
caddy.tls={{ evismo/syspass/prod/docker/caddy/email }}
caddy.targetport=80
traefik.http.routers.syspass.rule=Host(`pass.evismo.ch`)
traefik.http.routers.syspass.tls=true
traefik.http.routers.syspass.tls.certresolver=le
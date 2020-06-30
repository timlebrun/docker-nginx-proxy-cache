Basic Nginx Reverse Proxy Docker Container
---

Self-explanatory.

## Usage

```yaml
version: '2'
services:
  proxy:
    build: https://github.com/timlebrun/docker-nginx-proxy-cache.git
    ports:
      - 1312:80
    environment:
      NGINX_PROXY_PASS: https://upstream.timlebrun.fr
      NGINX_PROXY_HOST: upstream.timlebrun.fr
      NGINX_PROXY_TIMEOUT: 12 # default 90
      NGINX_PROXY_REDIRECT: yes # default no
	  # ...
```

## Environment Variables

`NGINX_PROXY_PASS` - The only required one. The URL of the service u want to proxy.

`NGINX_PROXY_HOST` - 'Host' header received by the upstream server. (defaults to request $host)

`NGINX_PROXY_TIMEOUT` - Maximum connection time (in seconds) to upstream (default: 90)

`NGINX_PROXY_REDIRECT` (yes/no) - Whether you want the user to be redirected instead of tunelled. (default: no)

`NGINX_PROXY_CACHE_LEVELS` - Storage levels (default: 1:2)

`NGINX_PROXY_CACHE_MAX_SIZE` - Maximum cache storage size (default: 10g)

`NGINX_PROXY_CACHE_INACTIVE` - Internal cache TTL (default: 60m)
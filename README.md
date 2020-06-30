Basic Nginx Reverse Proxy Docker Container
---

Self-explanatory.

## Environment Variables

`NGINX_PROXY_PASS` - The only required one. The URL of the service u want to proxy.
`NGINX_PROXY_HOST` - 'Host' header received by the upstream server. (defaults to request $host)

`NGINX_PROXY_TIMEOUT` - Maximum connection time (in seconds) to upstream (default: 90)
`NGINX_PROXY_REDIRECT` (yes/no) - Whether you want the user to be redirected instead of tunelled. (default: no)

`NGINX_PROXY_CACHE_LEVELS` - Storage levels (default: 1:2)
`NGINX_PROXY_CACHE_MAX_SIZE` - Maximum cache storage size (default: 10g)
`NGINX_PROXY_CACHE_INACTIVE` - Internal cache TTL (default: 60m)
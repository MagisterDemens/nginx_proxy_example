docker run  \
 -p 80:80 \
 -p 443:443 \
 -it  -d  \
 -v /var/run/docker.sock:/tmp/docker.sock:ro  \
 -v $(pwd)/../proxy/certs:/etc/nginx/certs \
 -v $(pwd)/../proxy/acme:/acmecerts \
 -v $(pwd)/../proxy/conf.d:/etc/nginx/conf.d \
 --name nginx_proxy \
 --net=host \
 --restart unless-stopped \
 nginx_proxy_image

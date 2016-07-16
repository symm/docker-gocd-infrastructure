FROM nginx:mainline-alpine

#COPY nginx.conf /etc/nginx/nginx.conf
COPY upstreams.conf    /etc/nginx/conf.d/upstreams.conf
COPY gocd-gateway.conf /etc/nginx/conf.d/gocd-gateway.conf

RUN rm /etc/nginx/conf.d/default.conf

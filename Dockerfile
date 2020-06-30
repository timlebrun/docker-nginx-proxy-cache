FROM nginx:alpine

# Replace ensubst by better envsubst
RUN curl -L https://github.com/a8m/envsubst/releases/download/v1.2.0/envsubst-`uname -s`-`uname -m` -o envsubst && \
	chmod +x envsubst && \
	mv envsubst /usr/local/bin

# Configure it
ENV NGINX_ENVSUBST_OUTPUT_DIR=/etc/nginx

# Add the new configuration template
COPY nginx.conf /etc/nginx/templates/nginx.conf.template
FROM nginx:alpine

EXPOSE $SIMPLESHARE_VERSION
ENV SIMPLESHARE_VERSION=1.0.0

# Install curl - needed for healthcheck.
RUN apk --no-cache add curl

# Copy custom Nginx configuration, example files, and startup script
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY startup.sh /tmp/startup.sh

# Files here will be available in a mounted volume on /shared and on the web-server.
COPY shared/ /tmp/shared/

# Make the startup script executable
RUN chmod +x /tmp/startup.sh

# Set the startup script as the entrypoint
ENTRYPOINT ["/tmp/startup.sh"]

# Expose port 80
EXPOSE 80

# Healthcheck
HEALTHCHECK --interval=90s --timeout=3s \
CMD curl --fail http://localhost/ || exit 1

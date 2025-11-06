FROM emqx/emqx:latest

# Create config directory
RUN mkdir -p /opt/emqx/etc/conf.d

# Copy minimal config
COPY emqx.conf /opt/emqx/etc/emqx.conf

# Expose only dashboard port
EXPOSE 18083

# Start EMQX
CMD ["emqx", "start"]

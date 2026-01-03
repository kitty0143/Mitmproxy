FROM mitmproxy/mitmproxy:latest

# SSL certificates copy करें
COPY certificate.crt /etc/ssl/certs/mitmproxy.crt
COPY private.key /etc/ssl/private/mitmproxy.key

# Run command with SSL
EXPOSE 8080
CMD ["mitmweb", "--web-host", "0.0.0.0", "--web-ssl-cert", "/etc/ssl/certs/mitmproxy.crt", "--web-ssl-key", "/etc/ssl/private/mitmproxy.key"]
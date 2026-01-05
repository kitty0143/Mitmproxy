FROM mitmproxy/mitmproxy:latest
EXPOSE 8080
CMD ["mitmweb", "--web-host", "0.0.0.0", "--set", "confdir=/home/mitmproxy/.mitmproxy"]
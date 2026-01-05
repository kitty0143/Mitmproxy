FROM mitmproxy/mitmproxy:latest

# Username: admin, Password: admin123
CMD ["mitmweb", "--web-host", "0.0.0.0", "--set", "web_auth=Kitty:Kitty1234"]
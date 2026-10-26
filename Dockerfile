FROM icr.io/appc-dev/ace-server:latest

# Copy the BAR file into the standard automated deployment directory
COPY Data-Converter.bar /home/aceuser/initial-config/bars/

# Set required environment variables
ENV LICENSE=accept
ENV ACE_SERVER_NAME=ACESERVER2

# Expose ports for HTTP apps (7800), Web UI (7600), and Admin (1111)
EXPOSE 7800 7843 1111 7600
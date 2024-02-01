FROM ubuntu:22.04 

# LABEL about the custom image
LABEL maintainer="david@safewebbox.com"
LABEL version="0.1"
LABEL description="Base Ubuntu image with some core development tools"

# Stop dpkg-reconfigure tzdata from prompting for input
ENV DEBIAN_FRONTEND=noninteractive

# Install Base Tools

RUN apt update 
RUN apt install -y wget unzip net-tools nmap btop nano ubuntu-dev-tools build-essential
RUN apt clean
RUN rm -rf /var/lib/apt/lists/*



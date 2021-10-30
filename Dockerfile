# Python Based Docker
FROM python:latest

# Installing Packages
RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y

# Updating Pip Packages
RUN pip3 install -U pip

# Copying Requirements
COPY requirements.txt /requirements.txt

# Installing Requirements
RUN cd /
RUN pip3 install -U -r requirements.txt
RUN mkdir /Text-Scanner-bot
WORKDIR /Text-Scanner-bot
COPY start.sh /start.sh

# Running Text-Scanner-bot
CMD ["/bin/bash", "/start.sh"]

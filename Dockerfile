#Deriving the latest base image
FROM python:latest

#LABEL Maintainer="gellanyhassan0"

WORKDIR /home

#COPY gellany_tools.py ./
#COPY requirements.txt ./

RUN apt-get update
RUN apt-get install git
RUN apt-get install chromium -y
RUN apt-get install x11vnc -y
#CMD [ "python3", "./manage.py", runserver", "0.0.0.0:8000"]

CMD python3 -c "import signal; signal.pause()"

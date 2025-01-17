# FROM python:3.8-slim-buster    #linux base image
# WORKDIR /app  #this set the working directory
# COPY . /app    #thos copy the current directory to the working directory.
# RUN apt update -y && apt install awscli -y #this updates the linux and install awscli
# EXPOSE 8080
# RUN apt-get update && pip install -r requirements.txt 
# CMD [ "python3","app.py"]   #this runs the app.py file





FROM python:3.9-slim-buster    
WORKDIR /app 
COPY . /app    
RUN apt update -y && apt install awscli -y 
EXPOSE 8080
RUN apt-get update && pip install -r requirements.txt 
CMD [ "python3","app.py"]   
FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN apt-get install -y npm
ADD . /src
RUN mv /src/java_script/package.json.site /src/java_script/package.json
RUN cd /src/java_script; npm install
WORKDIR /src/java_script
EXPOSE 3000
CMD ["nodejs", "/src/java_script/rhema_site.js"]

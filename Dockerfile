FROM ubuntu:14.04
RUN apt-get update -y
RUN apt-get install -y nodejs
RUN apt-get install -y npm
EXPOSE 3000
CMD ["/src/java_script/docker/node_start.sh", "/src/java_script/rhema_site.js"]

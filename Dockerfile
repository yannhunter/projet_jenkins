FROM ubuntu
LABEL yanick_ekongue (ekongue@gmail.com)
RUN apt-get update
RUN apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y git
RUN apt-get install -y nginx 
EXPOSE 80
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/yannhunter/HospitalRessource.git /var/www/html
#ADD HospitalRessource/ /var/www/html/
CMD ["nginx", "-g", "daemon off;"]

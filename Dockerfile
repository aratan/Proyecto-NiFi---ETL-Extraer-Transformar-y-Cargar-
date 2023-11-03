# Utilizamos la imagen base de Ubuntu 20.04
FROM ubuntu:20.04

# Instalamos Java 11
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk && \
    apt-get install -y unzip nano wget netcat links htop
RUN apt-get install figlet
RUN figlet Nifi

# Descargamos NiFi binario usando wget
RUN wget -O /tmp/nifi.zip https://dlcdn.apache.org/nifi/1.23.2/nifi-1.23.2-bin.zip
# Descomprimimos NiFi
RUN unzip /tmp/nifi.zip -d /opt/

# Eliminamos el archivo descargado
RUN rm /tmp/nifi.zip

# Accedemos a la carpeta descomprimida de NiFi
WORKDIR /opt/nifi-1.23.2

COPY nifi.properties ./conf/nifi.properties
# credenciales
RUN  /opt/nifi-1.23.2/bin/nifi.sh create-user --username root --usergroup nifi --password 123456789123

# Ejecutamos el script de inicio de NiFi
CMD ["bin/nifi.sh", "start"]

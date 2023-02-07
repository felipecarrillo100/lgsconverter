FROM ubuntu

# APT Dependencies
RUN apt-get update && apt-get install apt-file wget libgomp1 libgl1 libglu1-mesa libsqlite3-0 libpng16-16 libfreetype6 -y 
RUN apt-file update

# Debian dependencies
RUN wget http://ftp.de.debian.org/debian/pool/main/b/brotli/libbrotli1_1.0.9-2+b6_amd64.deb
RUN dpkg -i libbrotli1_1.0.9-2+b6_amd64.deb
RUN wget http://nz2.archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
RUN dpkg -i libssl1.1_1.1.1f-1ubuntu2.16_amd64.deb
RUN wget http://archive.ubuntu.com/ubuntu/pool/universe/c/cpprest/libcpprest2.10_2.10.15-1_amd64.deb
RUN dpkg -i libcpprest2.10_2.10.15-1_amd64.deb 

# Create user
RUN useradd -ms /bin/bash hxdr

# Switch user
USER hxdr
WORKDIR /home/hxdr

RUN chown -R hxdr:hxdr /home/hxdr

COPY --chown=hxdr ./out .
COPY --chown=hxdr ./lib ./lib
ENV DEBIAN_FRONTEND noninteractive
ENV LD_LIBRARY_PATH=/home/hxdr/lib


CMD [ "./LGSTestground" ]


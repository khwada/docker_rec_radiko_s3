FROM debian:stretch
RUN apt-get update && apt-get -y upgrade && apt-get -y install \
    rtmpdump \
    swftools \
    libxml2-utils \
    ffmpeg \
    libavcodec-extra \
    wget \
    && wget https://gist.githubusercontent.com/matchy2/3956266/raw/371be42108ea0c4a96c488f36a44b98deb17008f/rec_radiko.sh -O /usr/local/bin/rec_radiko.sh \
    && chmod +x /usr/local/bin/rec_radiko.sh

RUN apt-get -y install python-pip \
    && pip install awscli

ADD docker_rec_radiko_s3.sh /usr/local/bin/docker_rec_radiko_s3.sh
RUN chmod +x /usr/local/bin/docker_rec_radiko_s3.sh

ENV TZ Asia/Tokyo
WORKDIR /usr/volume

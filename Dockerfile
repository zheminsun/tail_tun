FROM ubuntu:latest

RUN apt-get update && \
    apt-get install --no-install-recommends -y vim sudo curl wget procps unzip sudo iputils-ping python3 && \
    apt-get install --no-install-recommends -y python3-pip && \
    pip install psutil bottle requests && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app 

COPY start.sh /app/start.sh
COPY cloudflare.py /app/cloudflare.py

EXPOSE 55390

CMD ["/app/start.sh"]

FROM Hosseinsavior/VIDEOconvertor
FROM python:3.9.2-slim-buster
RUN mkdir /app && chmod 777 /app
WORKDIR /app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git ffmpeg
COPY . .
COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .
CMD ["bash","convertor.sh"]
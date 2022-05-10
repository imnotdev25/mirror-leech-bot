#FROM anasty17/mltb:latest
FROM anasty17/mltb-oracle:latest
RUN apt install mediainfo -y
WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY requirements.txt .
RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]

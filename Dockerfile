FROM rasa/rasa

ENV BOT_ENV=production

COPY . /var/www
WORKDIR /var/www

RUN pip install rasa==1.3.0a1
RUN rasa train

ENTRYPOINT [ "rasa", "run", "-p", "8080"]

# ENV http_proxy http://proxy-chain.xxx.com:911/
# ENV https_proxy http://proxy-chain.xxx.com:912/
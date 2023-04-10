FROM verdaccio/verdaccio

EXPOSE 80

ADD docker.yaml /verdaccio/conf/config.yaml

CMD ["verdaccio","--listen", "0.0.0.0:80"]

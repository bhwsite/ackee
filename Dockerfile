FROM verdaccio/verdaccio

EXPOSE 80
USER root
ADD docker.yaml /verdaccio/conf/config.yaml
USER $VERDACCIO_USER_UID


CMD ["verdaccio","--listen", "0.0.0.0:80"]

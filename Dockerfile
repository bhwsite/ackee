FROM verdaccio/verdaccio

EXPOSE 80

USER verdaccio
COPY config.yaml ~/verdaccio/conf/config2.yaml

CMD ["verdaccio","--listen", "0.0.0.0:80", "--config", "~/verdaccio/conf/config2.yaml"]

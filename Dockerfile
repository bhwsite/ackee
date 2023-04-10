FROM verdaccio/verdaccio

EXPOSE 80

USER verdaccio
RUN sudo chown -R 10001:65533 ~/verdaccio
COPY config.yaml ~/verdaccio/conf/config2.yaml

CMD ["verdaccio","--listen", "0.0.0.0:80", "--config", "~/verdaccio/conf/config2.yaml"]

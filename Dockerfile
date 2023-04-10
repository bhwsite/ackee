FROM verdaccio/verdaccio

EXPOSE 80

USER root
ENV NODE_ENV=production
RUN ls /verdaccio
RUN mkdir -p /verdaccio/conf
ADD config.yaml /verdaccio/conf/config.yaml

USER verdaccio

CMD ["verdaccio","--listen", "0.0.0.0:80"]

FROM verdaccio/verdaccio

EXPOSE 80

USER root
ENV NODE_ENV=production
RUN mkdir -p /verdaccio/storage /verdaccio/plugins /verdaccio/conf
RUN ls packages/config/src/conf
ADD config.yaml /verdaccio/conf/config.yaml

USER verdaccio

CMD ["verdaccio","--listen", "0.0.0.0:80"]

FROM verdaccio/verdaccio

EXPOSE 80

ENV NODE_ENV=production
ADD config.yaml /verdaccio/conf/config.yaml

CMD ["verdaccio","--listen", "0.0.0.0:80"]

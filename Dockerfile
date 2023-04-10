FROM verdaccio/verdaccio

EXPOSE 80

ENV NODE_ENV=production

CMD ["verdaccio","--listen", "0.0.0.0:80"]

FROM verdaccio/verdaccio

EXPOSE 80

CMD ["verdaccio","--listen", "0.0.0.0:80"]

# get the base image, the rocker/verse has R, RStudio and pandoc
FROM rocker/verse:4.2.3

COPY . /quarto-R-binder

RUN . /etc/environment \
  && sudo apt-get install -y gdebi-core \
  && curl -LO https://quarto.org/download/latest/quarto-linux-amd64.deb \
  && sudo gdebi --non-interactive quarto-linux-amd64.deb


FROM rocker/rstudio:latest 

COPY /project /home/rstudio/project

RUN apt-get -y update \
    && apt-get install -y libcurl4-openssl-dev \
    && apt-get install -y libfontconfig1-dev \
    && apt-get install -y libxml2-dev \
    && apt-get install -y libgit2-dev \
    && apt-get install -y libharfbuzz-dev \
    && apt-get install -y libfribidi-dev \
    && apt-get install -y libfreetype6-dev \
    && apt-get install -y libpng-dev \
    && apt-get install -y libtiff5-dev \
    && apt-get install -y libjpeg-dev

COPY ./requirements.R .
RUN Rscript requirements.R

WORKDIR /home/rstudio/project
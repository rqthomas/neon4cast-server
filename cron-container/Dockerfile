FROM rocker/geospatial

RUN apt-get update && apt-get -y install cron
RUN install2.r renv cronR


COPY cron.sh /usr/local/bin/cron.sh
CMD ["bash", "-c", "/usr/local/bin/cron.sh"]

## Usage notes: 
## docker run --rm -ti -v $(pwd)/Rscript:/Rscript -v $(pwd)/cron.d:/etc/cron.d eco4cast/cron  


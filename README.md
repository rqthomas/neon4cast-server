# ci-server

Configuration files for deploying EFI CI setup on a VM

## Services

All services are defined by Docker Containers, as specified in [`docker-compose.yml`](docker-compose.yml).  These include:

- `caddy`:  Caddy is a reverse-proxy server that puts the other services behind a pretty domain name and configures https secure acccess. (https://caddyserver.com/)
- `minio`: Minio is popular high-performance object store (https://min.io/), providing AWS-S3-compliant buckets for upload and or download.
- `noaa_gefs`: Runs a custom R script every six hours on a cron job to create downscaled weather forecasts at NEON sites. <https://github.com/eco4cast/NOAA_GEFS_container>

- `netdata`: Netdata is a monitoring service (https://www.netdata.cloud/)
- `shiny`: An RStudio-Shiny-server instance for interactively exploring scores.  
- `rstudio` RStudio server instances for experimental work (https://rstudio.com)


## User-facing addresses

- https://minio.ecoforecast.org  (Data portal, see below)
- https://status.ecoforecast.org (netdata monitoring of server capacity)
- https://shiny.ecoforcast.org
- https://rstudio.ecoforecast.org

## Data buckets:

- https://minio.ecoforecast.org/NOAA_GEFS  Download-only portal of NOAA products.  
- https://minio.ecoforecast.org/submissions Upload-only portal for submissions


Can use web interface, direct download URLs, or AWS-S3 API tools.

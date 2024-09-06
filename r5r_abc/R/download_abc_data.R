# Download Open Street Map road network data from GitHub repository

abc_pbf_url <- "https://github.com/jxbarros/15mC_Workshop/releases/download/v1/abc.osm.pbf"
download.file(abc_pbf_url, destfile = here::here("data/abc.osm.pbf"))

# Download Open Street Map road network data from GitHub repository

abc_pbf_url <- "https://github.com/jxbarros/15mC_Workshop/releases/download/v1/abc.osm.pbf"
download.file(abc_pbf_url, destfile = here::here("data_/greater-london-latest.osm.pbf"))

gla_gtfs_url <- "https://data.bus-data.dft.gov.uk/timetable/download/gtfs-file/london/"
download.file(gla_gtfs_url, destfile = here::here("data_gla/itm_london_gtfs.zip"))

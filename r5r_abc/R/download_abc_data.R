# Download Open Street Map road network data from GitHub repository

abc_pbf_url <- "https://github.com/jxbarros/15mC_Workshop/releases/download/v1/abc.osm.pbf"
dir.create(here::here('data'))
download.file(abc_pbf_url, destfile = here::here("data/abc.osm.pbf"))

# Download census tracts
censo_santo_andre <- geobr::read_census_tract(
    code_tract = 3547809,
    year = 2020,
    zone = "urban",
    simplified = FALSE,
    showProgress = TRUE
  )

censo_sao_bernardo <- geobr::read_census_tract(
  code_tract = 3548708,
  year = 2020,
  zone = "urban",
  simplified = FALSE,
  showProgress = TRUE
)


censo_sao_caetano <- geobr::read_census_tract(
  code_tract = 3548807,
  year = 2020,
  zone = "urban",
  simplified = FALSE,
  showProgress = TRUE
)

mapview::mapview(censo_santo_andre)
mapview::mapview(censo_sao_bernardo)
mapview::mapview(censo_sao_caetano)

censo_abc <- rbind(censo_santo_andre, censo_sao_bernardo, censo_sao_caetano)
mapview::mapview(censo_abc)
sf::st_write(censo_abc, here::here('data/censo_abc.gpkg'))

centroid_abc <- sf::st_centroid(censo_abc)
mapview::mapview(centroid_abc)
sf::st_write(centroid_abc, here::here('data/centroid_abc.gpkg'))

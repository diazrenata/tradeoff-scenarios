library(rmarkdown)
for(decade in c(1970, 1980, 1990, 2000, 2010)) {
  rmarkdown::render(here::here("portal_decades", "decade_vis.Rmd"), output_file = paste0("vis", decade), params = list(decade = decade))
}

library(dplyr)
library(portalr)

dat <- portalr::summarise_individual_rodents(type = "Granivores")

head(dat)

dat_small <- filter(dat, !is.na(wgt)) %>%
  select(month, year, treatment, species, wgt, period) %>%
  mutate(energy = 5.69 * (wgt ^ .75)) %>%
  mutate(decade = substr(year, 0, 3)) %>%
  mutate(decade = paste0(decade, 0)) %>%
  mutate(decade = as.integer(decade))

decades <- unique(dat_small$decade)

for(i in 1:length(decades)) {
  write.csv(filter(dat_small, decade == decades[i]), file = here::here("portal_decades", "data", paste0(decades[i], ".csv")), row.names = F)
}

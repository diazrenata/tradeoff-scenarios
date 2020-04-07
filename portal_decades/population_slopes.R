get_populations_slopes <- function(pop_df) {
  
  all_species <- unique(pop_df$species)

  all_slopes <- list()
  
  for(i in 1:length(all_species)) {
    this_species <- filter(pop_df, species == all_species[i]) %>%
      select(!starts_with("sv"))
    
    all_slopes[[i]] <- get_population_slopes(this_species)
  }
  
  all_slopes <- bind_rows(all_slopes)
  
  return(all_slopes)
}

get_population_slopes <- function(species_pop_df) {
  
  species_pop_df <- species_pop_df %>%
    filter(!is.na(ind_abund)) 
  
  species_pop_slopes <- species_pop_df %>%
    group_by(treatment, species) %>%
    summarize_at(vars(-period), .funs = function(val, periods) {return(lm(val~periods)$coefficients[[2]])}, periods = species_pop_df$period) %>%
    ungroup()
  
  return(species_pop_slopes)
}
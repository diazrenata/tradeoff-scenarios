library(dplyr)

get_populations_lms <- function(pop_df) {
  
  all_species <- unique(pop_df$species)

  all_slopes <- list()
  all_pvals <- list()
  
  for(i in 1:length(all_species)) {
    this_species <- filter(pop_df, species == all_species[i]) %>%
      select(!starts_with("sv"))
    
    if(length(which(!is.na(this_species$ind_abund))) > 1) {
    
    all_slopes[[i]] <- get_population_slopes(this_species)
    all_pvals[[i]] <- get_population_pval(this_species)
    }
  }
  
  all_lm <- bind_rows(bind_rows(all_slopes), bind_rows(all_pvals))
  
 # all_lm <- tidyr::pivot_wider(all_lm, id_cols = c("treatment", "species"), names_from = var, values_from = c("ind_abund", "total_biomass", "total_energy"))
  
  return(all_lm)
}

get_population_slopes <- function(species_pop_df) {
  
  species_pop_df <- species_pop_df %>%
    filter(!is.na(ind_abund)) 
  
  species_pop_slopes <- species_pop_df %>%
    group_by(treatment, species) %>%
    summarize_at(vars(-period), .funs = function(val, periods) {return(lm(val~periods)$coefficients[[2]])}, periods = species_pop_df$period) %>%
    ungroup() %>%
    mutate(var = "slope")
  
  return(species_pop_slopes)
}


get_population_pval <- function(species_pop_df) {
  
  species_pop_df <- species_pop_df %>%
    filter(!is.na(ind_abund)) 
  
  species_pop_pval <- species_pop_df %>%
    group_by(treatment, species) %>%
    summarize_at(vars(-period), .funs = function(val, periods) {return(summary(lm(val~periods))$coefficients[2, 4])}, periods = species_pop_df$period) %>%
    ungroup() %>%
    mutate(var = "pval")
  
  return(species_pop_pval)
}
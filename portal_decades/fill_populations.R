library(dplyr)

fill_populations <- function(community_df) {
  
  all_species <- unique(community_df$species)
  
  all_periods <- unique(community_df$period)
  
  
  filled_pops <- list()
  
  for(i in 1:length(all_species)) {
    this_species <- filter(community_df, species == all_species[i])
    
    filled_pops[[i]] <- fill_population(this_species, period_range = all_periods)
  }
  
  filled_pops <- bind_rows(filled_pops)
  
}

fill_population <- function(species_df, period_range) {
  
  if(!setequal(unique(species_df$period), period_range)) {
    
    edge_periods <- c(period_range[ which(period_range < min(species_df$period))], period_range[ which(period_range > max(species_df$period))])
    
    inner_periods <- setdiff(c(min(species_df$period):max(species_df$period)), unique(species_df$period))
    
    if(length(inner_periods) > 0) {
      species_df <- bind_rows(species_df,
                            data.frame(
                              period = inner_periods,
                              species = species_df$species[1],
                              treatment = species_df$treatment[1],
                              stringsAsFactors = F
                            ))
    }
    species_df <- species_df %>%
      mutate_at(vars(-treatment, -period, -species), .funs = function(val) {return(ifelse(is.na(val), 0, val))}) %>%
      mutate_at(vars(-treatment, -period, -species), .funs = function(val) {return(ifelse(is.nan(val), 0, val))}) 
    
    if(length(edge_periods > 0)) {
      species_df <- species_df %>%
        bind_rows(data.frame(
          period = edge_periods,
          species = species_df$species[1],
          treatment = species_df$treatment[1],
          stringsAsFactors = F
        ))
    }
    
  }
  
  return(species_df)
  
}

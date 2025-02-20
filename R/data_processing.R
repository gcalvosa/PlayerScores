#' Process Match Data
#'
#' This function computes ratings for all players in a given match dataset.
#'
#' @param match_data A data frame with columns: Player, Goals, Assists, Passes, Tackles, Saves
#' @return A data frame with an added 'Rating' column
#' @export
process_match_data <- function(match_data) {
  match_data$Rating <- with(match_data, compute_ratings(goals, assists, passes, tackles, saves))
  return(match_data)
}

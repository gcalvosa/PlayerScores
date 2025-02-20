#' Rank Players by Rating
#'
#' This function sorts players based on their computed ratings.
#'
#' @param match_data A data frame with player stats (goals, assists, passes, tackles, saves, shots).
#' @return A data frame sorted by rating in descending order.
#' @examples
#' match_data <- data.frame(
#'   Player = c("Mbappé", "Bellingham", "Vinicius Jr."),
#'   goals = c(2, 0, 1),
#'   assists = c(1, 0, 1),
#'   passes = c(45, 35, 40),
#'   tackles = c(0, 2, 1),
#'   saves = c(0, 2, 0),
#'   shots = c(4, 1, 3)
#' )
#' rank_players(match_data)
#'
#' @export
rank_players <- function(match_data) {
  match_data$Rating <- compute_ratings(
    goals = match_data$goals,
    assists = match_data$assists,
    passes = match_data$passes,
    tackles = match_data$tackles,
    saves = match_data$saves,
    shots = match_data$shots
  )

  ranked_data <- match_data[order(-match_data$Rating), ]
  return(ranked_data)
}

#' Compute Player Ratings
#'
#' This function calculates player ratings based on match performance metrics.
#'
#' @param goals Number of goals scored
#' @param assists Number of assists
#' @param passes Number of completed passes
#' @param tackles Number of successful tackles
#' @param saves Number of goalkeeper saves
#'
#' @return A rating score between 0 and 10
#' @export
#'
#' @examples
#' compute_ratings(goals = 2, assists = 1, passes = 50, tackles = 3, saves = 0)
compute_ratings <- function(goals = 0, assists = 0, passes = 0, tackles = 0, saves = 0) {

  # Assign weight to each performance metric
  rating <- (goals * 3) + (assists * 2) + (passes * 0.1) +
    (tackles * 0.5) + (saves * 1.5)

  # Normalize rating to be between 0 and 10
  rating <- min(10, max(0, rating))

  return(rating)
}

#' Compute Player Ratings
#'
#' This function calculates a player's rating based on performance stats.
#'
#' @param goals Number of goals scored.
#' @param assists Number of assists.
#' @param passes Number of successful passes.
#' @param tackles Number of tackles won.
#' @param saves Number of saves (for goalkeepers).
#' @param shots Number of shots taken.
#' @return A numeric rating between 0 and 10.
#' @export
compute_ratings <- function(goals, assists, passes, tackles, saves, shots) {

  rating <- (goals * 2) + (assists * 1.5) + (passes * 0.1) +
    (tackles * 0.5) + (saves * 1.2) + (shots * 0.3)


  rating <- pmin(rating, 10)
  rating <- pmax(rating, 0)

  return(round(rating, 2))
}



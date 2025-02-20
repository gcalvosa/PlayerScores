library(ggplot2)

#' Visualize Player Ratings
#'
#' This function creates a bar plot of player ratings.
#'
#' @param match_data A data frame containing 'Player' and 'Rating' columns.
#' @return A ggplot object
#' @export
visualize_ratings <- function(match_data) {
  ggplot(match_data, aes(x = reorder(Player, Rating), y = Rating, fill = Rating)) +
    geom_bar(stat = "identity") +
    coord_flip() +
    theme_minimal() +
    labs(title = "Player Ratings", x = "Player", y = "Rating") +
    scale_fill_gradient(low = "red", high = "green")
}

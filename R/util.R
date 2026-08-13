# my answer
place_coral <- function(coral) {
  reef <- matrix(0, nrow = 5, ncol = 5)
  rc <- sample(1:25, size = coral)
  for(i in rc){
    rc_row <- (i - 1) %/% 5 + 1
    rc_col <- (i - 1) %% 5 + 1
    reef[rc_row, rc_col] <- 1
  }
  return(reef)
}
place_coral(8)


# class answer
# initialize_reef <- function(coral_numbers) {
#   reef <- matrix(0, nrow = 5, ncol = 5)

#   random_coral <- sample(1:25, size = coral_numbers)
 
#   for(rc in random_coral){
#     rc_row <- (rc - 1) %/% 5 + 1
#     rc_col <- (rc - 1) %% 5 + 1
#     reef[rc_row, rc_col] <- 1
#   }

#   return(reef)
# }

# initialize_reef(coral_numbers = 8)
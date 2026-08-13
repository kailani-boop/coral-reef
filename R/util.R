reef <- matrix(0, nrow = 5, ncol = 5)

rc <- sample(1:25, 8)
for(i in rc){
    rc_row <- (i - 1) %/% 5 + 1
    rc_col <- (i - 1) %% 5 + 1
    reef[rc_row, rc_col] <- 1
}
print(reef)


#reef <- random_corals(init_reef, rc, rc_row, rc_col)
place_coral <- function(coral) {
  reef <- matrix(0, nrow = 5, ncol = 5)
  rc <- sample(1:25, size = coral, replace = FALSE)
  for(i in rc){
    rc_row <- (i - 1) %/% 5 + 1
    rc_col <- (i - 1) %% 5 + 1
    reef[rc_row, rc_col] <- 1
  }
  return(reef)
}
place_coral(20)

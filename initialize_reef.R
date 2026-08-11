set.seed(32)

# create matrix
reef_matrix <- matrix(data = 0, nrow = 5, ncol = 5, byrow = TRUE)
reef_matrix # data = 0 instead of 1:25


# randomly sample coral starting locations
random_cells <- sample(1:25, 8)
random_cells


# place my coral tokens
# rows
(1:25 - 1) %% 5 + 1

# cols
(1:25 - 1) %/% 5 + 1

cell_a <- 6
cell_row_a <- (6 - 1) %/% 5 + 1
cell_col_a <- (6 - 1) %% 5 + 1
reef_matrix[cell_row_a, cell_col_a] <- 1
reef_matrix

cell_b <- 11
cell_row_b <- (11 - 1) %/% 5 + 1
cell_col_b <- (11 - 1) %% 5 + 1
reef_matrix[cell_row_b, cell_col_b] <- 1
reef_matrix

cell_c <- 20
cell_row_c <- (20 - 1) %/% 5 + 1
cell_col_c <- (20 - 1) %% 5 + 1
reef_matrix[cell_row_c, cell_col_c] <- 1
reef_matrix

# do the rest for 9, 22, 8, 1, 7

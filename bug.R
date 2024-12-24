```R
# This code attempts to subset a data frame using a character vector of column names,
# but it fails if any of the specified columns don't exist in the data frame.

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_subset <- c("A", "B", "D")
subset_df <- df[, cols_to_subset]

# This will result in an error: Error in `[.data.frame`(df, , cols_to_subset) : undefined columns selected
```
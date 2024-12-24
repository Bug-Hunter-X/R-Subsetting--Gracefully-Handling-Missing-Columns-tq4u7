```R
# Improved code to handle missing columns during subsetting

df <- data.frame(A = 1:3, B = 4:6, C = 7:9)
cols_to_subset <- c("A", "B", "D")

# Check if all columns exist
existing_cols <- intersect(cols_to_subset, colnames(df))

# If all columns exist proceed with subsetting; otherwise, handle the error gracefully
if (length(existing_cols) == length(cols_to_subset)){
  subset_df <- df[, cols_to_subset]
} else {
  message("Warning: Some columns not found. Subsetting only existing columns.")
  subset_df <- df[, existing_cols]
}

print(subset_df)
```
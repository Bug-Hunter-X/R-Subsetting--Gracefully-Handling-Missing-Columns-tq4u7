# R Subsetting: Gracefully Handling Missing Columns

This repository demonstrates a common error in R when subsetting data frames using character vectors of column names.  The issue arises when the character vector includes column names that do not exist within the data frame.  This can lead to a runtime error.  The solution provided demonstrates how to safely subset a data frame even when some specified columns might be missing.

## Bug Report
The original code attempts to directly subset a data frame using a character vector containing column names.  If any of these names are not found, the code will fail with an error.

## Solution
The solution involves adding checks to ensure that all specified columns exist before performing the subsetting operation.  This makes the code more robust and prevents unexpected errors.

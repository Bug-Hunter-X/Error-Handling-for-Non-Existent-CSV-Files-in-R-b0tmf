```r
# Improved error handling for reading CSV files
file_path <- "nonexistent_file.csv"

if (!file.exists(file_path)) {
  cat("Error: File not found.", file = stderr())
  quit(status = 1) # Exit with an error code
} else {
  data <- read.csv(file_path)
  # Proceed with data processing
  print(head(data))
}
```
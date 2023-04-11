# use read excel library
library(readxl)

# read air France excel file and store it to a object called af_df
# sheet 2 with column names
af_df <- read_xls(path="Air France Case Spreadsheet Supplement.xls",
                  sheet=2,
                  col_names = TRUE)
# check summary of air france data frame
summary(af_df)

# check missing value using for loop
for (i in 1:ncol(af_df)){
  cat(sum(is.na(af_df[,i]) == TRUE), "-", colnames(af_df[i]), "\n")
}

af_df
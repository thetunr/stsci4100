library(data.table)
gc() # Clear unused memory
# setwd("~/Documents/06.sp25/04.stsci4100/stsci4100") # MODIFY TO CORRECT WD

number.of.rows = -1
number.of.rows = 200000 # Uncomment to set limit

# Importing tsv files into environment
import.data <- T
if (import.data) {
  basics <- fread("tsv/title.basics.tsv", sep = "\t", 
                  na.strings = "\\N", nrows = number.of.rows)
  crew <- fread("tsv/title.crew.tsv", sep = "\t", 
                na.strings = "\\N", nrows = number.of.rows)
  principals <- fread("tsv/title.principals.tsv", sep = "\t", 
                      na.strings = "\\N", nrows = number.of.rows)
  ratings <- fread("tsv/title.ratings.tsv", sep = "\t", 
                   na.strings = "\\N", nrows = number.of.rows)
}

# Saving RDS
save.data <- T
save_dir <- "rds/"
if (save.data) {
  saveRDS(basics, paste0(save_dir, "basics.rds"))
  saveRDS(crew, paste0(save_dir, "crew.rds"))
  saveRDS(principals, paste0(save_dir, "principals.rds"))
  saveRDS(ratings, paste0(save_dir, "ratings.rds"))
}
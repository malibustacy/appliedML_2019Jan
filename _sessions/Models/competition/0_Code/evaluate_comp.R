# load install google drive package
install.packages("googledrive")
library(googledrive)
library(tidyverse)

# To reset google account oauth
# drive_auth(reset=T)

# collect files
files = drive_find(n_max = 200)

# select relevant files
regr_files = unlist(str_extract_all(files$name, '[:print:]*_regr[^ - ]*.RDS'))
clas_files = unlist(str_extract_all(files$name, '[:print:]*_clas[^ - ]*.RDS'))

# download files
for(i in 1:length(regr_files)){
googledrive::drive_download(regr_files[i],
                            path = paste0('_sessions/Models/competition/3_Competitors/',regr_files[i]))
  }
for(i in 1:length(clas_files)){
  googledrive::drive_download(clas_files[i],
                              path = paste0('_sessions/Models/competition/3_Competitors/',clas_files[i]))
  }


stats = dlstats::cran_stats(c('caret','e1071','nnet','glmnet','kernlab','igraph',
                              'mice','party','randomForest','class','rpart',
                              'gbm','mlr','xgboost','tensorflow','earth'))

res = tapply(stats$downloads,stats$package,sum)
res = as.data.frame(res)

res = res[!is.na(res[[1]]),,drop=F]
res = res[order(res[[1]],decreasing = F),,drop=F]

plot.new();plot.window(xlim=c(0,400000),ylim=c(.5,nrow(res)))

pos = nrow(res)
rect(pos)
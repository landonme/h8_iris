

# Model
# 1. Create a folder "inst" and add a model script that builds and saves a model
# 2. Build a multi-class classification model predicting the Species. I recommend using xgboost but you have the freedom to use whatever method you would like
# 3. If you use xgboost use objective = multi:softprob and eval_metric = mlogloss

library(xgboost)

data(iris)

x = as.matrix(iris[, 1:4])
y = as.numeric(factor(iris[, 5]))-1



params <- list("objective" = "multi:softprob",
               "eval_metric" = "mlogloss",
               "max_depth" = 6,
               "eta" = 0.3,
               "gamma" = 0,
               "colsample_bytree" = 1,
               "min_child_weight" = 1,
               "num_class" = 3)





mod = xgboost(data = x, label = y, nrounds = 10, params=params)











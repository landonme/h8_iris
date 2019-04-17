

library(shiny)
library(shinydashboard)
library(ggplot2)


#### Global ####
#setwd("C:/Users/lamech/Documents/Inst")
source("model.R")


gp = function(sl, sw, pl, pw){
  m = matrix(nrow = 1, ncol = 4)
  colnames(m)=colnames(x)
  m[1] = sl
  m[2] = sw
  m[3] = pl
  m[4] = pw
  
  df = predict(xgb.iris,m) %>%  t() %>% data.frame() %>% rename(setosa = X1 , versicolor=X2, virginica=X3)
  return(df)
  return(m)
  print(df)
}

gf = function(sw, sl){
  m = matrix(nrow = 1, ncol = 2)
  colnames(m)=c("Sepal.Width", "Sepal.Length")
  m[1] = sw
  m[2] = sl
  
  
  dff = m %>% data.frame()
  return(dff)
  
}

df <-  read.csv(
  "C:/Users/sjsa3/Desktop/Shared_with_Mac/year2_sem1/FIT3152/Week-(6)/Friends.csv"
  ,header = TRUE, row.names = 1
  )
df <-  as.matrix(df)
library(igraph)
View(df)
g = graph_from_adjacency_matrix(df, mode = "undirect")

degree =as.table(degree(g))
close =as.table(closeness(g))
btw =as.table(betweenness(g))
eig =as.table(evcent(g)$vector)

T = as.data.frame(rbind(degree,close,btw, eig))
T = t(T)

#which one is more important ? E based on the betweenness 
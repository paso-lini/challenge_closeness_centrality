#Instalando as bibliotecas

library(igraph)
library(readr)

#Lendo arquivo .txt "edges" contido na mesma pasta do código
edges <- read.table(file = "edges.txt", header = FALSE)

#Excluindo possíveis entradas com erro
edges <- na.omit(edges)

#Transformando edges em matriz
matrix_edges <- as.matrix(edges)

#head(matrix_edges)

#Transformando a matriz construída com o arquivo edges em um objeto graph e edicionando +1 ao parâmetro principal para corrigir erro "invalid (negative) vertex id"
graph_edges <- igraph::graph.adjlist(matrix_edges + 1)

#Calculando a closeness centrality sem a built-in function do igraph
distgraph = distances(graph_edges, mode = "out", algorithm = "dijkstra")
distgraph[distgraph == Inf] <- vcount(graph_edges)
closeness_centrality = rowMeans(distgraph)**-1 #usando rowMeans em vez de rowSums para incluir o caso em que a distância é 0 (vértices iguais)

#Criando um data frame com os vértices do graph object e suas respectivas proximidades
tabvisualization = data.frame(matrix_edges, "Closeness Centrality" = closeness_centrality)

#Ranqueando os vértices pela proximidade
tabvisualization[order(closeness_centrality),]
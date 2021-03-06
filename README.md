# Closeness Centrality Challenge
## Brief Description
A code in r to rank the vertices in a given graph object by their closeness
### This repository is the solution to a challenge requested as a technical test in Semantix's selection process. The solution to this challenge is as follows

- In this challenge, suppose we are looking to do social network analysis for prospective customers. We want to extract from their social network a metric called "closeness centrality". Centrality metrics try to approximate a measure of influence of an individual within a social network. The distance between any two vertices is their shortest path. The farness of a given vertex v is the sum of all distances from each vertex to v. Finally, the closeness of a vertex v is the inverse of the farness.
- The first part of the challenge is to rank the vertices in a given graph by their closeness. The graph is provided in the attached file; each line of the file consists of two vertex names separated by a single space, representing an edge between those two nodes.
- You should deliver a git repository with your code and a short README file outlining the solution and explaining how to build and run the code. You may deliver your code in any programming language. There is no problem in using libraries, for instance for testing or network interaction, but please avoid using a library that already implements the core graph or social network algorithms. Don't shy away from asking questions whenever you encounter a problem. Also, please do
get in touch at any moment if you believe the timeframe is unrealistic.

## Solution

We assume by default that the given graph is undirected. To calculate closeness centrality, we first calculate the distance between one node and all other nodes, repeating this process for all graph entries and summing up all distances found. Then we divide 1 by the sum found.
With the closeness centrality in hand, we create a data.frame with the edge index, vertices 1 and 2, and their closeness centrality. Furthermore, the data.frame was ranked ascendancy by closeness centrality, in order to accomplish what was proposed by the challenge.


## Cloning the code to your machine

- Install the readr and igraph libraries.
- Make sure that the file "edges.txt" is in the same directory as the code.

### References:
- Closeness Centrality: http://en.wikipedia.org/wiki/Centrality#Closeness_centrality
- Shortest path: http://en.wikipedia.org/wiki/Shortest_path_problem

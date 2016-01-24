\name{VertexSimilarity}
\alias{VertexSimilarity}
\title{Vertex Similarity}
\usage{
VertexSimilarity(m,alpha=0.97)
}
\description{
Returns Vertex Similarity matrix of undirected grahp based on the method stated by E. A. Leicht, Petter Holme, AND M. E. J. Newman <DOI:10.1103/PhysRevE.73.026120>
}
\arguments{
\item{m}{Adjacency matrix of the graph}
\item{alpha}{It tells the contribution of long paths relative to short ones.For, 0 < alpha < 1, similarity measure considers vertices to be more similar if they have a greater than expected number of short paths between them, than if they have a greater than expected number of long ones.}
}
\details{
This method is based on the idea that a pair of vertices i,j are similar to each
other if any pair u,v of their neighbours is similar. Using this method we can
even find similarity values for the vertices that are not directly connected.
}
\examples{
m <- matrix(c(1,0,0,0,0,1,1,1,1),ncol=3,nrow=3,byrow=TRUE)
SimilarityMatrix <- VertexSimilarity(m,alpha=0.85)
}

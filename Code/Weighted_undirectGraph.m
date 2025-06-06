s=[1 2 2]; %start nodes
t=[2 3 4]; %end nodes
weights=[10 5 7];
G=digraph(s,t,weights); %create a graph objects
plot(G,'EdgeLabel', G.Edges.Weight); 
title('Weighted undirected graph');
%define edges
nodes={'A','B','C','D','E','F','G'};

%define edges (source and target nodes)
s=[1 1 2 2 3 3]; %from A-.B ,A->C,B->D,B->E,C->F
t=[2 3 4 5 6 7]; %to

%define edge weights
weights=[5 3 2 4 6 1];

%create a directed graph with weights and name nodes
G=digraph(s,t,weights,nodes);

%plot the tree with weights displayed
plot(G,'Layout','layered','Direction','down','Edgelabel',G.Edges.Weight);
title('Weights Tree with 3 levels');
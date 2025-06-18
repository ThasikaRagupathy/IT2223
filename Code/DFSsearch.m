% Define edges using source and target nodes
s = [1 2 2 3];   % From nodes (A->B, A->C, B->D, B->E)
t = [2 3 4 5];   % To nodes
weights = [3 7 8 4];
names = {'A', 'B', 'C', 'D', 'E'};

% Create directed graph
G = digraph(s, t, weights, names);

% Plot the graph
figure;
p = plot(G, 'Layout', 'layered', 'Direction', 'Down', 'EdgeLabel', G.Edges.Weight);
title('DFS Depth First Search Graph');

% Create adjacency matrix
adjacencyMatrix = adjacency(G) > 0;

% DFS starting node index
startNode = 1;

% Perform DFS traversal and get the order of nodes visited
visited = false(1, numnodes(G));
order = [];
[visited, order] = dfsOrder(startNode, adjacencyMatrix, visited, order);

% Display DFS order on command window
fprintf('DFS traversal order by node names:\n');
disp(names(order));

% Highlight nodes in DFS order on the plot
highlight(p, order, 'NodeColor', 'g');

% Label nodes with their DFS order number
for i = 1:length(order)
    labelStr = sprintf('%s (%d)', names{order(i)}, i);
    labelnode(p, order(i), labelStr);
end

% --- DFS Recursive function ---
function [visited, order] = dfsOrder(node, adjacencyMatrix, visited, order)
    visited(node) = true;
    order = [order node];
    
    adjacentNodes = find(adjacencyMatrix(node,:) > 0);
    for i = 1:length(adjacentNodes)
        if ~visited(adjacentNodes(i))
            [visited, order] = dfsOrder(adjacentNodes(i), adjacencyMatrix, visited, order);
        end
    end
end

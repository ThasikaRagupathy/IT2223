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
title('BFS Breadth First Search Graph');

% Create adjacency matrix
adjacencyMatrix = adjacency(G) > 0;

% BFS starting node index
startNode = 1;

% Perform BFS traversal and get the order of nodes visited
order = bfsOrder(startNode, adjacencyMatrix);

% Display BFS order on command window
fprintf('BFS traversal order by node names:\n');
disp(names(order));

% Highlight nodes in BFS order on the plot
highlight(p, order, 'NodeColor', 'r');

% Optionally, label nodes with their BFS order number
for i = 1:length(order)
    labelStr = sprintf('%s (%d)', names{order(i)}, i);
    labelnode(p, order(i), labelStr);
end


% BFS function returning the order of visited nodes (without queue, using array)
function order = bfsOrder(startNode, adjacencyMatrix)
    numNodes = size(adjacencyMatrix,1);
    visited = false(1,numNodes);
    order = []; % to record BFS visit order
    queue = [];
    
    queue = [queue startNode];
    visited(startNode) = true;
    
    while ~isempty(queue)
        currentNode = queue(1);
        queue(1) = [];
        
        order = [order currentNode];
        
        adjacentNodes = find(adjacencyMatrix(currentNode,:) > 0);
        
        for i = 1:length(adjacentNodes)
            if ~visited(adjacentNodes(i))
                visited(adjacentNodes(i)) = true;
                queue = [queue adjacentNodes(i)];
            end
        end
    end
end

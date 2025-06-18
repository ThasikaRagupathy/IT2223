% Define the weighted adjacency matrix
adjMatrix = [
    0 2 0 1 0;
    2 0 4 3 0;
    0 4 0 0 6;
    1 3 0 0 5;
    0 0 6 5 0;
];

% Create and plot the graph
G = graph(adjMatrix);
figure;
plot(G, 'EdgeLabel', G.Edges.Weight);
title("Undirected Graph from Adjacency Matrix");

% Dijkstra's algorithm (manual implementation)
n = size(adjMatrix, 1);
s = 1;  % source node
t = 5;  % target node

% Initialization
visited = false(1, n);          % track visited nodes
distance = inf(1, n);           % store distances from source
prev = zeros(1, n);             % store path (predecessors)
distance(s) = 0;                % distance to source is 0

% Dijkstra's main loop
for i = 1:n
    % Find the unvisited node with the smallest distance
    minDist = inf;
    u = -1;
    for j = 1:n
        if ~visited(j) && distance(j) < minDist
            minDist = distance(j);
            u = j;
        end
    end

    if u == -1
        break; % Remaining nodes are inaccessible
    end

    visited(u) = true;

    % Update distances to neighbors
    for v = 1:n
        if adjMatrix(u, v) > 0 && ~visited(v)
            alt = distance(u) + adjMatrix(u, v);
            if alt < distance(v)
                distance(v) = alt;
                prev(v) = u;
            end
        end
    end
end

% Reconstruct the shortest path
path = t;
while path(1) ~= s
    if prev(path(1)) == 0
        path = []; % No path found
        break;
    end
    path = [prev(path(1)), path];
end

% Display the result
if isempty(path)
    disp('No path found.');
else
    disp(['Shortest path from node ', num2str(s), ' to node ', num2str(t), ':']);
    disp(path);
    disp(['Total distance: ', num2str(distance(t))]);

    % Highlight the path on the plot
    p = plot(G, 'EdgeLabel', G.Edges.Weight);
    highlight(p, path, 'EdgeColor', 'r', 'LineWidth', 2);
end

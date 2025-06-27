% Number of nodes
n = 5;
%list of node1,node2,weight
edges = [
    1 2 1;
    1 3 3;
    1 4 2;
    2 4 4;
    3 4 5
];%each row represents an edge in the format:

% Sort edges by weight
numEdges = size(edges, 1);%total no of edges

%step 1: sort edges by weight(bubble sort)
for i=1:numEdges-1
    for j=1:numEdges-i
        if edges(j,3)>edges(j+1,3)
            temp=edges(j,:);
            edges(j,:)=edges(j+1,:);
            edges(j+1,:)=temp;
        end
    end
end

%initialize MST adjacency list(empty)
MST_adj=cell(n,1);
mst=[];%store mst edges
total_weight=0;
%DFS function to check connectivity
function found=dfs(current,target,visited,MST_adj)
if current==target
    found=true;
    return;
end
visited(current)=true;
found=false;
neighbors=MST_adj{current};

for k=1:length(neighbors)
    neigh=neighbors(k);
    if ~visited(neigh)
        found=dfs(neigh,target,visited,MST_adj);
        if found
            return;
        end
    end
end
end

for i=1:numEdges
    u=edges(i,1);%starting node
    v=edges(i,2);%ending node
    w=edges(i,3);
    visited=false(i,n);
    if isempty(MST_adj{u})
        connected=false;
    else
        connected=dfs(u,v,visited,MST_adj);
    end
    if ~connected
        mst=[mst;u v w];
        total_weight=total_weight+w;
        MST_adj{u}=[MST_adj{u} v];
        MST_adj{v}=[MST_adj{v} u];
    end 
end

disp('Edges in MST:');
disp('Node1 Node2 Weight');
disp(mst);
fprintf('Total weight=%d\n',total_weight);

G_mst=graph(mst(:,1),mst(:,2),mst(:,3));
figure;
plot(G_mst,'EdgeLabel',G_mst.Edges.Weight);
title('Minimum Spanning tree(MST)');
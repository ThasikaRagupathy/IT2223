%define the distance matrix between cities
dist=[ 0 10 15 20;
 10 0 35 25;
 15 35 0 30;
 20 25 30 0;
];

%generate all permutations of  cities 2, 3, and 4
allPerms = perms([2 3 4]);%generates all permutations of the input vector

%sorts the rows of a matrix in ascending order by default.
sortedPerms=sortrows(allPerms);

%display the order of permutations
disp('Permutations checke din this order:');
disp(sortedPerms);

%initialize minimum distance 
minDist=Inf;
%initialize best path
bestPath=[];

for i=1:size(sortedPerms,1)
   currentPath = [1 sortedPerms(i,:) 1];
    currentDist=0;
    for j=1:length(currentPath)-1
        currentDist=currentDist+dist(currentPath(j),currentPath(j+1));
    end
    if currentDist<minDist
        minDist=currentDist;
        bestPath=currentPath;
    end
end

disp('Shorted Path:');
disp(bestPath);

disp('Minimum distance:');
disp(minDist);
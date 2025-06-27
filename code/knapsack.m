%0/1 knapsack

% Item values and weights
values = [60, 100, 120];
weights = [10, 20, 30];
capacity = 50;
n = length(values);

maxProfit=knapsack01(weights,values,capacity);

fprintf('Maximum profit(0/1 knapsack):%.2f\n',maxProfit);

function maxProfit=knapsack01(weights,values,capacity)
n=length(weights);

dpzeros(n+1,capacity+1);

for i = 1:n
    for w = 0:capacity
        if weights(i)<=w
            K(i, w) = 0;
       include=dp(i,w-weights(i)+1)+values(i);
       exclude=dp(i,w+1);
       dp(i+1,w+1)=max(include,exclude);
        else
            dp(i+1,w+1)=dp(i,w+1);
        end
    end
end
maxProfit=dp(n+1,capacity+1);
end

%fractionalKnapsack
function maxProfit=fractionalKanpsack(weights,values,capacity)
n=length(weights);

% Maximum value that can be put in the knapsack
fprintf('Maximum value: %d\n', K(n+1, capacity+1));

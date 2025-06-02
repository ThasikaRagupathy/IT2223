Array = [64,25,12,22,11];
%length of the array
n = length(Array);

% Steps for selection sort
for i = 1:n-1
    minIndex = i;
    
    %index of the min_element in unsorted array
    for j = i+1:n
        if Array(j) < Array(minIndex)%compare
            minIndex = j;
        end
    end
    
    % Swap found min_element with the first element
    if minIndex ~= i %~ working as Not operator
        temp = Array(i);
        Array(i) = Array(minIndex);
        Array(minIndex) = temp;
    end
end

%Sorted array
fprintf('Sorted Array: ');
disp(Array);
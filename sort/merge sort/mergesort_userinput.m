function sortedArray = merge_sort(arr)
    % Base case: If the array has 1 or no elements, it's already sorted
    if length(arr) < 2
        sortedArray = arr;
        return;
    end
    
    % Find the middle index to split the array into two halves
    mid = floor(length(arr) / 2);
    
    % Recursively sort the left half of the array
    leftHalf = merge_sort(arr(1:mid));
    
    % Recursively sort the right half of the array
    rightHalf = merge_sort(arr(mid+1:end));
    
    % Merge the two sorted halves into a single sorted array
    sortedArray = merge(leftHalf, rightHalf);
end

function mergedArray = merge(leftArr, rightArr)
    % Initialize indices for left and right arrays
    i = 1; j = 1; 
    mergedArray = zeros(1, length(leftArr) + length(rightArr)); % Preallocate for efficiency
    
    % Merge elements from both halves until one is exhausted
    k = 1;
    while i <= length(leftArr) && j <= length(rightArr)
        if leftArr(i) < rightArr(j)
            mergedArray(k) = leftArr(i);
            i = i + 1;
        else
            mergedArray(k) = rightArr(j);
            j = j + 1;
        end
        k = k + 1;
    end
    
    % Append remaining elements from leftArr if any
    while i <= length(leftArr)
        mergedArray(k) = leftArr(i);
        i = i + 1;
        k = k + 1;
    end
    
    % Append remaining elements from rightArr if any
    while j <= length(rightArr)
        mergedArray(k) = rightArr(j);
        j = j + 1;
        k = k + 1;
    end
end

% User Input
arr = input('Enter the array elements as a vector (e.g., [64, 25, 12, 22, 11]): ');

% Sorting the array using Merge Sort
sortedArr = merge_sort(arr);

% Display the sorted array
fprintf('Sorted Array: ');
disp(sortedArr);

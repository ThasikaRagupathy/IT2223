function sortedArray = quicksort(arr)
    if length(arr) < 2
        sortedArray = arr;
        return;
    end
    
    pivot = arr(end); % Choosing the last element as pivot
    left = arr(arr < pivot); % Elements smaller than pivot
    right = arr(arr > pivot); % Elements greater than pivot
    middle = arr(arr == pivot); % Pivot elements
    
    sortedArray = [quicksort(left), middle, quicksort(right)];
end

% Example usage
arr = [64, 25, 12, 22, 11];
sortedArr = quicksort(arr);
disp(sortedArr);

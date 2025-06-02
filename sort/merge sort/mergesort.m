function sortedArray = mergeSort1(arr)
    % Base Case: If array has 1 or fewer elements, it's already sorted
    if length(arr) <= 1
        sortedArray = arr;
        return;
    end
    
    % Splitting the array into two halves
    mid = floor(length(arr)/2);
    leftHalf = mergeSort1(arr(1:mid));
    rightHalf = mergeSort1(arr(mid+1:end));
    
    % Merge the sorted halves
    sortedArray = merge(leftHalf, rightHalf);
end

function mergedArray = merge(leftArr, rightArr)
    mergedArray = [];
    while ~isempty(leftArr) && ~isempty(rightArr)
        if leftArr(1) <= rightArr(1)
            mergedArray = [mergedArray, leftArr(1)];
            leftArr(1) = [];
        else
            mergedArray = [mergedArray, rightArr(1)];
            rightArr(1) = [];
        end
    end
    mergedArray = [mergedArray, leftArr, rightArr];
end

% Initialize the array and call the sorting function
arr = [38, 27, 43, 3, 9, 82, 10];
sortedArr = mergeSort1(arr);

% Display the sorted array
disp('Sorted Array:');
disp(sortedArr);

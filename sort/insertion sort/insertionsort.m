array=[5,4,10,1,6,2];
    n = length(array); %find the length of an array
    
    for i = 2:n %loop start with index 2
        key = array(i); % Select the current element as the key
        j = i - 1; % Start comparison with the previous element
        
        % Move elements that are greater than key one position ahead
        
        while j >= 1 && array(j) > key % Check if previous elements are larger
            array(j + 1) = array(j); % Move larger element forward
            j = j - 1; % Move to the previous index for further comparison
        end
        array(j + 1) = key; % Place the key element in its correct position
    end
%display the sorted array  
disp('Insertion sort: ');
disp(array);

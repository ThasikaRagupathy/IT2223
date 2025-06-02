bArray = [3,6,8,12,14,17,25,29,31,36,42,47,53,55,62];
target = 42;

low = 1;
high = length(bArray);

while (low <= high)
    mid = floor((low + high) / 2);

    if (bArray(mid) == target) 
        fprintf('Element Found at index %d\n', mid);
        break;
    elseif (target < bArray(mid))
        high = mid - 1;
    else
        low = mid + 1;
    end
end

if low > high
    fprintf('Element is not found\n');
end

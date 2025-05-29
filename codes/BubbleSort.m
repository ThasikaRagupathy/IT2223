array=[64,34,25,12,22,11,90];
n=length(array);%length of an array

for i=1:n-1 % Loop through the array multiple times
    for j=1:n-1 % Compare adjacent elements
        if array(j)>array(j+1) % If the left element is greater, swap
            temp=array(j); %Store the left element temporarily
            array(j)=array(j+1); %Move the right element to the left position
            array(j+1)=temp ; %Assign the stored value to the right position
        end
    end
end
%Sorted array
fprintf('Bubble sort: ');
disp(array);

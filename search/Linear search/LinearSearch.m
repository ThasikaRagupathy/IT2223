Array1=[3,5,7,9,1,11,13];
target=9;
n = length(Array1);
found = false;

for i = 1:n
   if (Array1(i)==target)
       found=true;
       index=i;
       break;
   end
end

if found
       fprintf('Array index is %d\n',i)
   else
       fprintf('Array is not found\n')
  
end
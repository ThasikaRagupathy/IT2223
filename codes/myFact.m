
function results = myFact(n)
% we cannot find factorial for negative numbers
if n<0
    error("Factorial is undefined for negative numbers");
% for 0 and 1 the factorial is 1
elseif n==0 || n==1
    results=1;
else
%after the 1 find the factorial for existing numbers    
    results=n*myFact(n-1);
end
%print the results
fprintf("Display the factorial %d is %d\n",n,results);
end
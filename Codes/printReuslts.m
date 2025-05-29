%get marks from the user and print the grade
%marks>=90 A+
%marks>=80 A
%marks>=70 B
%marks>=60 C
%marks>=50 D
%else F

marks=input("Enter your marks: ");

if marks>100|| marks<0
    disp('invalid marks')

elseif marks>=90
    disp('Result: A+')
elseif marks>=80
    disp('Result: A')
elseif marks>=70
    disp('Result: B')
elseif marks>=60
    disp('Result: C')
elseif marks>=50
    disp('Result: D')
else
    disp('Result: F')
end

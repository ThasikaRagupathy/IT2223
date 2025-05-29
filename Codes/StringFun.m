string functions

str1='apple'
str2='banana'
result=strcat(str1,str2)%
disp(result)

x={'hello','world','sri'}
result2=strcat(x{:})%joining all elements in a array using : Symbol
disp(result2)

result3=strjoin(x,':')%strjoin use to to joining the strcat
disp(result3)
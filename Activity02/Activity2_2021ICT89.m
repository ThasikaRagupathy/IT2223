marks = zeros(1,5);

for i = 1:5
    marks(i) = input(sprintf('Enter marks for student %d (out of 100): ', i));
    
    if marks(i) >= 90 && marks(i) <= 100
        grade = 'A';
    elseif marks(i) >= 80
        grade = 'B';
    elseif marks(i) >= 70
        grade = 'C';
    elseif marks(i) >= 60
        grade = 'D';
    else
        grade = 'F';
    end
    
    fprintf('Student %d scored %d and received grade %s.\n', i, marks(i), grade);
end

while true
    fprintf('\nMenu:\n');
    fprintf('1. Show all marks as a bar chart\n');
    fprintf('2. Show average marks\n');
    fprintf('3. Exit\n');
    
    choice = input('Select an option: ');

    switch choice
        case 1
            bar(marks);
            title('Student Marks');
            xlabel('Student Number');
            ylabel('Marks');
            fprintf('Bar chart displayed.\n');
            
        case 2
            avg = mean(marks);
            fprintf('The average mark is: %.2f\n', avg);
            
        case 3
            fprintf('Thank you for using the system. Goodbye!\n');
            break;
            
        otherwise
            fprintf('Invalid selection! Please choose a valid option.\n');
    end
end

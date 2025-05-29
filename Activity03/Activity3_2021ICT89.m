numVoters = input('Enter the total number of voters: ');

votes = zeros(1,4);

for i = 1:numVoters
    fprintf('\nVoting Menu:\n');
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    choice = input(sprintf('Voter %d, enter your choice (1-4): ', i));
  
    switch choice
        case 1
            votes(1) = votes(1) + 1;
        case 2
            votes(2) = votes(2) + 1;
        case 3
            votes(3) = votes(3) + 1;
        case 4
            votes(4) = votes(4) + 1;
        otherwise
            fprintf('Invalid vote! Skipping...\n');
    end
end

fprintf('\nVote Counts:\n');
fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

[maxVotes, winnerIdx] = max(votes);
winnerNames = {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'};
fprintf('The winner is %s with %d votes!\n', winnerNames{winnerIdx}, maxVotes);

while true
    fprintf('\nVisualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot\n');
    fprintf('4. Exit\n');
    
    visChoice = input('Select an option (1-4): ');

    switch visChoice
        case 1
            bar(votes);
            title('Student Club Election Results');
            xlabel('Candidates');
            ylabel('Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
            
        case 2
            pie(votes, {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'});
            title('Vote Proportions');
            
        case 3
            scatter(1:4, votes, 'filled');
            title('Vote Scatter Plot');
            xlabel('Candidate');
            ylabel('Votes');
            xticklabels({'A', 'B', 'C', 'D'});
            grid on;
            
        case 4
            fprintf('Thank you for participating in the election! Goodbye.\n');
            break;
            
        otherwise
            fprintf('Invalid selection! Please choose a valid option (1-4).\n');
    end
end

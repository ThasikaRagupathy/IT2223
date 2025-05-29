balance = 1000;

while true
    fprintf('\nATM Menu:\n');
    fprintf('1. Deposit\n');
    fprintf('2. Withdraw\n');
    fprintf('3. Balance Inquiry\n');
    fprintf('4. Exit\n');
    
    choice = input('Select an option:');

    switch choice
        case 1
            amount = input('Enter amount to deposit: ');
            if amount > 0
                balance = balance + amount;
                fprintf('Deposit successful! New balance: %.2f\n', balance);
            else
                fprintf('Invalid amount! Please enter a positive value.\n');
            end
            
        case 2
            amount = input('Enter amount to withdraw: ');
            if amount > 0
                if amount <= balance
                    balance = balance - amount;
                    fprintf('Withdrawal successful! New balance: %.2f\n', balance);
                else
                    fprintf('Insufficient funds! Current balance: %.2f\n', balance);
                end
            else
                fprintf('Invalid amount! Please enter a positive value.\n');
            end
            
        case 3
            fprintf('Your current balance is: %.2f\n', balance);
            
        case 4
            fprintf('Thank you for using our ATM! Goodbye.\n');
            break;
            
        otherwise
            fprintf('Invalid selection! Please choose a valid option (1-4).\n');
    end
end
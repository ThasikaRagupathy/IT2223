% Input string
inputString = 'hello world';

% Define vowels as a character array
vowels = 'aeiouAEIOU';

% Find and extract vowels from the string
foundVowels = inputString(ismember(inputString, char(vowels)));

% Display result
disp(['Vowels in the string: ', foundVowels]);


switch inputString
    case 'a'
        disp('vowel')
    case 'e'
       disp('vowel')
    case 'i'
        disp('vowel')
    case 'o'
        disp('vowel')
    case 'u'
        disp('vowel')
    otherwise
        disp ('consonant')
end

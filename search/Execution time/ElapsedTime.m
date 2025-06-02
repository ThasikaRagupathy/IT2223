n=10;
tic;%Start timing

for i = 1:n
    disp(i);
end

elapsedTime = toc;%End timing and store elapsed time

fprintf('Elapsed time: %f seconds\n',elapsedTime);
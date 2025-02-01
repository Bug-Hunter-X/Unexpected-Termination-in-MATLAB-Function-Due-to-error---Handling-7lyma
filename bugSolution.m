function result = myFunction(input)
  try
    % Some code that might cause an error
    if input < 0
      error('Input must be non-negative');
    end
    % More code here
    result = input * 2; 
  catch ME
    % Handle the error gracefully
    fprintf('An error occurred: %s\n', ME.message);
    result = NaN; % Or another appropriate default value
  end
end

% Example of how the error is now handled
input = -5;
result = myFunction(input); 
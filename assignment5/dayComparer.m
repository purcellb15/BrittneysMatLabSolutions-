function [improved] = dayComparer(ID, dayA, dayB)
% This function takes 3 inputs and returns an output.  If the second input
% is less than the third the names from the first input will be entered
% into the empty output array.
improved = [];

for i= 1: length(ID)
    if dayA(i)<dayB(i)
        improved= [improved, ID(i)]
    end
end
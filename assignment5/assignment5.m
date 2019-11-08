%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% assignment5
%
% in this script we are importing isokinetic data and maniuplating it 
% this first line of code is importing the data from the file isok_data 
[SubjectID,Age,Gender,Weight,Day1,Day2,Day3] = importfile('isok_data_6803 (1).csv');
% the next line of code uses genderIsoCalc to separate the data by gender
% and averages the values for each subject by days and then it also averages the
% total for each group
[maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(Gender,Day1, Day2, Day3);
%dayComparer shows the the SubjectIDs for the subjects who improved from
%day to day
[day1toDay2]= dayComparer(SubjectID, Day1, Day2)
[day2toDay3]= dayComparer(SubjectID, Day2, Day3)

% the next few lines of code normalize the data by day
normDay1Mean= mean(Day1/Weight)
normDay2Mean= mean(Day1/Weight)
normDay3Mean= mean(Day1/Weight)
% this is going to create a csvfile of the results

iso_results.csv = writematrix(maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean, day1toDay2, day2toDay3, normDay1Mean, normDay2Mean, normDay3Mean)

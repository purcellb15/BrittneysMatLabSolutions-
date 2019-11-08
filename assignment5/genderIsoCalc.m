function [maleIsoIndMeans, femaleIsoIndMeans, maleGroupIsoMean, femaleGroupIsoMean] = genderIsoCalc(a,b,c,d);
% This function take 4 inputs and creates 2 empty arrays that fill in as
% the for loop is running.  It takes the data and separates it by gender
% and then averages the day vaules before entering the new value into the
% array.  At the end the values inside the 2 arrays that were created are
% averaged and named  
maleIsoIndMeans= [];
femaleIsoIndMeans= [];
for i= 1:25
if a(i)== 'M'
    mav= ((b(i,1)+c(i,1)+d(i,1))/3);
    maleIsoIndMeans= [maleIsoIndMeans, mav]
elseif a(i)=='F' 
     fav=((b(i,1)+c(i,1)+d(i,1))/3);
     femaleIsoIndMeans= [femaleIsoIndMeans, fav]
end
end
maleGroupIsoMean= mean(maleIsoIndMeans)
femaleGroupIsoMean= mean(femaleIsoIndMeans)

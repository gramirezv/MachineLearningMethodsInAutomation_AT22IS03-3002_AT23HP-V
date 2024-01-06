function [features_table,activity_labels] = getFeaturesFromActivity(inActivityObject, inActivityName)
%GETFEATURESFROMACTIVITY Gets features and labels from an activity object
%   returns features and activity labels from an activity object 

% get the segments for this activity object, segments are returned for each
% table individually (e.g., one for gyroscope and one for linear
% acceleration)
samplingFreq = 200; %Sampling frequency for this experiment was 200Hz
numOfSecs = 3;
[segs_g, segs_la] = getSegments(inActivityObject,samplingFreq,numOfSecs);

% get the features table for this activity object, the features are created
% from both gyroscope and linear acceleration segments
[features_table, activity_labels] = getFeatures(segs_g, segs_la,inActivityName);

end
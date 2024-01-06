function [segments_gyro, segments_linear_acc] = getSegments(inActivityObject, inSamplingFreq, inNumOfSecs)
% GETSEGMENTS - This function gets the gyroscope and linear acceleration
% segments from an Activity Object.
%
%   [SEGMENTS_GYRO, SEGMENTS_LINEAR_ACC] = GETSEGMENTS(INACTIVITYOBJECT, INSAMPLINGFREQ, INNUMOFSECS)
%
%   INACTIVITYOBJECT: activity object
%   INSAMPLINGFREQ: Sampling frequency in Hz (used to record experiment in
%   phyphox)
%   INNUMOFSECS: Number of seconds for each segment
%   SEGMENTS_GYRO: gyroscope segments
%   SEGMENTS_LINEAR_ACC: linear acceleration segments

linear_accTable = inActivityObject.linear_acc;
gyroTable = inActivityObject.gyroscope;

% Get gyroscope absolute value
gTot = sqrt(gyroTable.Xrads.^2 + ...
            gyroTable.Yrads.^2 + ...
            gyroTable.Zrads.^2);

% Get linear acceleration total value 
aTot = sqrt(linear_accTable.Xms2.^2 + ...
            linear_accTable.Yms2.^2 + ...
            linear_accTable.Zms2.^2);

% Define segment length depending on sampling frequency and desired seconds
segment_lenght = inNumOfSecs * inSamplingFreq; 

n_gyro = height(gyroTable);
n_linear_acc = height(linear_accTable);

% define how many segments can be extracted from tables
numSegments_gyro = floor(n_gyro / segment_lenght);
numSegments_linear_acc = floor(n_linear_acc / segment_lenght);


% Preallocate space for storing segments
segments_gyro = zeros(numSegments_gyro, segment_lenght);
segments_linear_acc = zeros(numSegments_linear_acc, segment_lenght);

% get segments for gyroscope
rownum=1; % index for segments
% no overlap
for k=1:segment_lenght:n_gyro-segment_lenght
    segments_gyro(rownum,:)=gTot(k:k+segment_lenght-1)';
    rownum=rownum+1;
end

% get segments for linear acceleration
rownum=1; % index for segments
% no overlap
for k=1:segment_lenght:n_linear_acc-segment_lenght
    segments_linear_acc(rownum,:)=aTot(k:k+segment_lenght-1)';
    rownum=rownum+1;
end

end
function activityObjectOut = getActivityTables(linearAccelTable, gyroTable, starting_time, ending_time)
%GETACTIVITYTABLE constructs an ActivityObject with the linear acceleration
%and gyroscope tables given
%   activityObjectOut = getActivityTable(linearAccelTable, gyroTable, starting_time, ending_time)
%   
%   These activities were recorded at 200Hz, so each secondd has 200
%   samples
%
%   Inputs:
%       - linearAccelTable: Whole recording for linear acceleration
%       - gyroTable: Whole recording for gyroscope
%       - starting_time: The starting time of the activity (in seconds)
%       - ending_time: The starting time of the activity (in seconds)
%   Outputs:
%       - activityObjectOut: An object containing linear acceleration and
%       gyroscope tables trimmed to the starting and ending time
% 

segment_lin_acc = linearAccelTable(linearAccelTable.Times>=starting_time &...
    linearAccelTable.Times<=ending_time,:);
segment_gyro = gyroTable(gyroTable.Times>=starting_time &...
    gyroTable.Times<=ending_time,:);

activityObjectOut = ActivityObject(segment_lin_acc, ...
                                  segment_gyro);
end
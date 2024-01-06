function plotMeasurementTables(accelerometerTable,gyroscopeTable,plotTitle)
%PLOTMEASUREMENTTABLES Prints the accelerometer and gyroscope data
%   PLOTMEASUREMENTTABLES(accelerometerTable, gyroscopeTable,plotTitle) prints the data from accelerometerTable and gyroscopeTable and adds the title from plotTitle.
%   
%   accelerometerTable: Linear accelerometer table, first row contains times, then X, Y,
%   Z data
%   gyroscopeTable: Gyroscope table, first column contains times, then X,
%   Y, Z data
%   plotTitle: Is the title added to the top of the plot
%   
figure;
tl = tiledlayout(2,1);
nexttile;
plot(accelerometerTable{:,1}, accelerometerTable{:,2}, ...
    accelerometerTable{:,1}, accelerometerTable{:,3}, ...
    accelerometerTable{:,1}, accelerometerTable{:,4});
nexttile;
plot(gyroscopeTable{:,1}, gyroscopeTable{:,2}, ...
    gyroscopeTable{:,1}, gyroscopeTable{:,3}, ...
    gyroscopeTable{:,1}, gyroscopeTable{:,4});
title(tl,plotTitle);
end
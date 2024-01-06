function [features, categorical_labels] = getFeatures(gyro_segments,linear_acc_segments, name_of_activity)
%GETFEATURES Get features from gyro and linear acc segments
%   returns a table with the features of segments from gyro and linear acc

% Define the variable names for the features table
% each variable is a feature added in the table below
VarNames = {'mean_gyro',
            'mean_linear_acc',
            'std_gyro',
            'std_linear_acc',
            'skewness_gyro',
            'skewness_linear_acc'};

% Define the features that are added to the table, for example
% the following feature table includes:
%   - mean
%   - standar deviation
%   - skewness
features = table(mean(gyro_segments')', ...
                 mean(linear_acc_segments')', ...
                 std(gyro_segments')', ...
                 std(linear_acc_segments')', ...
                 skewness(gyro_segments')', ...
                 skewness(linear_acc_segments')', ...
                 'VariableNames',VarNames);

% create an array of categorical variables, this is used to label 
% this specific activity with the name of the activity
num_of_segments = height(features);
categorical_labels = repmat(categorical(name_of_activity),num_of_segments,1);

end
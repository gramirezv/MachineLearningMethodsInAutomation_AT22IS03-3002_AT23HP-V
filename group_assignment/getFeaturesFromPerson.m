function [features_table,activity_labels] = getFeaturesFromPerson(inPersonRecordedObject)
%GETFEATURESFROMPERSON Gets the features from each recorded person
%   returns a table with the features from each activity and the labels

% Get activity features and labels from each person
[features_standing, labels_standing] = getFeaturesFromActivity(inPersonRecordedObject.standing, "standing");
[features_walking, labels_walking] = getFeaturesFromActivity(inPersonRecordedObject.walking, "walking");
[features_knee_bending, labels_knee_bending] = getFeaturesFromActivity(inPersonRecordedObject.knee_bending, "knee_bending");
[features_tip_rising, labels_tip_rising] = getFeaturesFromActivity(inPersonRecordedObject.tip_rising, "tip_rising");

% concatenate all activity features in a single table per person
features_table = vertcat(features_standing, ...
                         features_walking, ...
                         features_knee_bending, ...
                         features_tip_rising);

% concatenate all activity labels in a single table per person
activity_labels = vertcat(labels_standing, ...
                          labels_walking, ...
                          labels_knee_bending, ...
                          labels_tip_rising);
end
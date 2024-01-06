classdef ActivityObject
    %ACTIVITYOBJECT Contains an Activity object
    %   This objects contains the linear acceleration and gyroscope tables

    properties
        linear_acc
        gyroscope
    end

    methods
        function obj = ActivityObject(linear_acc,gyroscope)
            %ACTIVITYOBJECT Construct an instance of this class
            %   constructs an ActivityObject, receives an linear
            %   acceleration and gyroscope tables as inputs
            obj.linear_acc = linear_acc;
            obj.gyroscope = gyroscope;
        end

        % function outputArg = method1(obj,inputArg)
        %     %METHOD1 Summary of this method goes here
        %     %   Detailed explanation goes here
        %     outputArg = obj.Property1 + inputArg;
        % end
    end
end
classdef PersonRecordedObject
    properties
        % name - String defining name of this object
        name
        % standing - Object holding linear acceleration and gyroscope
        % tables for standing
        standing
        % walking - Object holding linear acceleration and gyroscope
        % tables for walking
        walking
        % knee_bending - Object holding linear acceleration and gyroscope
        % tables for knee bending 
        knee_bending
        % tip_rising - Object holding linear acceleration and gyroscope
        % tables for tip rising
        tip_rising
    end

    methods
        function obj = PersonRecordedObject(name, standing, walking, knee_bending,tip_rising)
            % PersonRecordedObject - Constructor for PersonRecordedObject
            % class
            % obj = PersonRecordedObject(name, standing, walking, knee_bending,tip_rising)
            % Inputs:
            %       - name: Name for this ActivityObject
            %       - standing: ActivityObject that holds tables for
            %       standing
            %       - walking: ActivityObject that holds tables for
            %       walking
            %       - knee_bending: ActivityObject that holds tables for
            %       knee bending
            %       - tip_rising: ActivityObject that holds tables for
            %       tip rising
            obj.name = name;
            obj.standing = standing;
            obj.walking = walking;
            obj.knee_bending = knee_bending;
            obj.tip_rising = tip_rising;
        end
        function PlotData(obj)
            % PlotData - Plots linear acceleration and gyroscope data
            %
            figure;
            tl = tiledlayout(4,2);
            
            nexttile;
            plot(obj.standing.linear_acc.Times,obj.standing.linear_acc.Xms2, ...
                obj.standing.linear_acc.Times,obj.standing.linear_acc.Yms2, ...
                obj.standing.linear_acc.Times,obj.standing.linear_acc.Zms2);
            title('standing linear acc');
            nexttile;
            plot(obj.standing.gyroscope.Times,obj.standing.gyroscope.Xrads, ...
                obj.standing.gyroscope.Times,obj.standing.gyroscope.Yrads, ...
                obj.standing.gyroscope.Times,obj.standing.gyroscope.Zrads);
            title('standing gyroscope')

            nexttile;
            plot(obj.walking.linear_acc.Times,obj.walking.linear_acc.Xms2, ...
                obj.walking.linear_acc.Times,obj.walking.linear_acc.Yms2, ...
                obj.walking.linear_acc.Times,obj.walking.linear_acc.Zms2);
            title('walking linear acc');
            nexttile;
            plot(obj.walking.gyroscope.Times,obj.walking.gyroscope.Xrads, ...
                obj.walking.gyroscope.Times,obj.walking.gyroscope.Yrads, ...
                obj.walking.gyroscope.Times,obj.walking.gyroscope.Zrads);
            title('walking gyroscope')

            nexttile;
            plot(obj.knee_bending.linear_acc.Times,obj.knee_bending.linear_acc.Xms2, ...
                obj.knee_bending.linear_acc.Times,obj.knee_bending.linear_acc.Yms2, ...
                obj.knee_bending.linear_acc.Times,obj.knee_bending.linear_acc.Zms2);
            title('knee bending linear acc');
            nexttile;
            plot(obj.knee_bending.gyroscope.Times,obj.knee_bending.gyroscope.Xrads, ...
                obj.knee_bending.gyroscope.Times,obj.knee_bending.gyroscope.Yrads, ...
                obj.knee_bending.gyroscope.Times,obj.knee_bending.gyroscope.Zrads);
            title('knee bending gyroscope')

            nexttile;
            plot(obj.tip_rising.linear_acc.Times,obj.tip_rising.linear_acc.Xms2, ...
                obj.tip_rising.linear_acc.Times,obj.tip_rising.linear_acc.Yms2, ...
                obj.tip_rising.linear_acc.Times,obj.tip_rising.linear_acc.Zms2);
            title('tip risisng linear acc');
            nexttile;
            plot(obj.tip_rising.gyroscope.Times,obj.tip_rising.gyroscope.Xrads, ...
                obj.tip_rising.gyroscope.Times,obj.tip_rising.gyroscope.Yrads, ...
                obj.tip_rising.gyroscope.Times,obj.tip_rising.gyroscope.Zrads);
            title('tip rising gyroscope')
            title(tl, [obj.name, ' Data'])

        end
    end
end
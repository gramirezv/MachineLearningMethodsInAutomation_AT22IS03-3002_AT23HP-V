function plotActivities(activitiesArray)
%  Give an array of objects to plot the activities
%  this function 

    numberOfActivities = numel(activitiesArray);

        %Plot walking 
        figure;
        tl = tiledlayout(numberOfActivities,2);
        for i = 1:numberOfActivities
            nexttile;
            plot(activitiesArray(i).standing.linear_acc.Times,activitiesArray(i).standing.linear_acc.Xms2, ...
                activitiesArray(i).standing.linear_acc.Times,activitiesArray(i).standing.linear_acc.Yms2, ...
                activitiesArray(i).standing.linear_acc.Times,activitiesArray(i).standing.linear_acc.Zms2);
            title([activitiesArray(i).name, ' linear acc']);
            nexttile;
            plot(activitiesArray(i).standing.gyroscope.Times,activitiesArray(i).standing.gyroscope.Xrads, ...
                activitiesArray(i).standing.gyroscope.Times,activitiesArray(i).standing.gyroscope.Yrads, ...
                activitiesArray(i).standing.gyroscope.Times,activitiesArray(i).standing.gyroscope.Yrads);
            title([activitiesArray(i).name, ' gyroscope'])
         end
        title(tl,'Standing')
        
        %plot walking 
        figure;
        tl = tiledlayout(numberOfActivities,2);
        for i = 1:numberOfActivities
            nexttile;
            plot(activitiesArray(i).walking.linear_acc.Times,activitiesArray(i).walking.linear_acc.Xms2, ...
                activitiesArray(i).walking.linear_acc.Times,activitiesArray(i).walking.linear_acc.Yms2, ...
                activitiesArray(i).walking.linear_acc.Times,activitiesArray(i).walking.linear_acc.Zms2);
            title([activitiesArray(i).name, ' linear acc']);
            nexttile;
            plot(activitiesArray(i).walking.gyroscope.Times,activitiesArray(i).walking.gyroscope.Xrads, ...
                activitiesArray(i).walking.gyroscope.Times,activitiesArray(i).walking.gyroscope.Yrads, ...
                activitiesArray(i).walking.gyroscope.Times,activitiesArray(i).walking.gyroscope.Yrads);
            title([activitiesArray(i).name, ' gyroscope'])
         end
        title(tl,'Walking')
        
        %plot knee bending 
        figure;
        tl = tiledlayout(numberOfActivities,2);
        for i = 1:numberOfActivities
            nexttile;
            plot(activitiesArray(i).knee_bending.linear_acc.Times,activitiesArray(i).knee_bending.linear_acc.Xms2, ...
                activitiesArray(i).knee_bending.linear_acc.Times,activitiesArray(i).knee_bending.linear_acc.Yms2, ...
                activitiesArray(i).knee_bending.linear_acc.Times,activitiesArray(i).knee_bending.linear_acc.Zms2);
            title([activitiesArray(i).name, ' linear acc']);
            nexttile;
            plot(activitiesArray(i).knee_bending.gyroscope.Times,activitiesArray(i).knee_bending.gyroscope.Xrads, ...
                activitiesArray(i).knee_bending.gyroscope.Times,activitiesArray(i).knee_bending.gyroscope.Yrads, ...
                activitiesArray(i).knee_bending.gyroscope.Times,activitiesArray(i).knee_bending.gyroscope.Yrads);
            title([activitiesArray(i).name, ' gyroscope'])
         end
        title(tl,'Knee bending')
        
        %plot tip rising
        figure;
        tl = tiledlayout(numberOfActivities,2);
        for i = 1:numberOfActivities
            nexttile;
            plot(activitiesArray(i).tip_rising.linear_acc.Times,activitiesArray(i).tip_rising.linear_acc.Xms2, ...
                activitiesArray(i).tip_rising.linear_acc.Times,activitiesArray(i).tip_rising.linear_acc.Yms2, ...
                activitiesArray(i).tip_rising.linear_acc.Times,activitiesArray(i).tip_rising.linear_acc.Zms2);
            title([activitiesArray(i).name, ' linear acc']);
            nexttile;
            plot(activitiesArray(i).tip_rising.gyroscope.Times,activitiesArray(i).tip_rising.gyroscope.Xrads, ...
                activitiesArray(i).tip_rising.gyroscope.Times,activitiesArray(i).tip_rising.gyroscope.Yrads, ...
                activitiesArray(i).tip_rising.gyroscope.Times,activitiesArray(i).tip_rising.gyroscope.Yrads);
            title([activitiesArray(i).name, ' gyroscope'])
         end
        title(tl,'Tip Rising')

end


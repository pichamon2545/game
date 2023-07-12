close all;
clear all;

data = readtable("tj/mouse-task-beginner_24.csv");
data(:, 9:18) = [];         % remove cognition.run columns

lampsoff = data(strcmp(data.task, 'ready')| strcmp(data.task, 'ITI')| strcmp(data.task, 'ITI_wait'), :);
lampsoff(end,:) = [];       % remove last ITI (isn't followed by lamp off)
lampsoff = lampsoff.abs_time/1000;

cue = data(strcmp(data.task, 'cue'), :);
cue = cue.abs_time/1000;

test = data(7:end-2, :);    % get only trial data
test(strcmp(test.task, 'ready'), :) = [];
abs_time_press = test.abs_time_press;
abs_time_press(strcmp(test.abs_time_press,'[]')| strcmp(test.abs_time_press,'null'), :) = [];

% get all presses
bracketed_cells = cell2mat(cellfun(@(x) strcmp(x(1),'['), abs_time_press, 'uniformoutput', 0));
non_bracketed_cells = cell2mat(cellfun(@(x) ~strcmp(x(1),'['), abs_time_press, 'uniformoutput', 0));
abs_time_press(bracketed_cells) = cellfun(@(x) str2double(split(x(2:end-1), ","))', abs_time_press(bracketed_cells), 'uniformoutput', 0);
abs_time_press(non_bracketed_cells) = cellfun(@(x) str2double(x), abs_time_press(non_bracketed_cells), 'uniformoutput', 0);
abs_time_press = cell2mat(abs_time_press')/1000;

% raster plot
[binned_spikes, spikes_wrt_event, firstspike_wrt_event] = binupspikes(abs_time_press, cue, 2.5, 17);
ax = plotraster(spikes_wrt_event, firstspike_wrt_event, 'dispName', 'keyPress', 'referenceEventName', 'cue', 'append',false, 'markerSize', 16, 'plotFirst', true, 'color', [0.1 0.6 0.1]);
xlim(ax, [-8,17])

[binned_lo, lo_wrt_event, firstlo_wrt_event] = binupspikes(lampsoff, cue, 2.5, 16);
ax = plotraster(lo_wrt_event, firstlo_wrt_event, 'dispName', 'lampOff', 'referenceEventName', 'cue', 'append',true, 'markerSize', 50, 'plotFirst', false, 'color', [0.25,0.25, 0.8], 'alpha', 0.5, 'ax', ax);

[binned_c, c_wrt_event, firstc_wrt_event] = binupspikes(cue, cue, 2.5, 17);
ax = plotraster(c_wrt_event, c_wrt_event, 'dispName', 'cue', 'referenceEventName', 'cue', 'append',true, 'markerSize', 50, 'plotFirst', false, 'color', [1,0, 0], 'alpha', 0.5, 'ax', ax);

yyaxis right

h = prettyHxg(ax, firstspike_wrt_event, 'first keypress', [0.1,0.7,0.3], 0:1:17, []);
ylim(ax, [0,3])
yyaxis left

xline(3.333, 'b')
xline(7, 'b')

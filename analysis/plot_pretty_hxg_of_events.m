function [f,ax,h] = plot_pretty_hxg_of_events(events_s,dispName)
    [f,ax] = makeStandardFigure();
    h = prettyHxg(ax, events_s, dispName, [0.1,0.7,0.3], 0:0.25:17, []);

end
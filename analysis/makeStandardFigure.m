% makeStandardFigure.m
function [f, axs] = makeStandardFigure(naxes,subplots)
	% 
	% 	Created: 2/2020		Allison Hamilos 	ahamilos{at}g.harvard.edu
	% 
	% 	subplots is total rows, columns
	% 		e.g., [2,3]
	% 
    if nargin <1, naxes=1;end
    if nargin <2, subplots = [1,1];end
	f = figure;
	set(f, 'color', 'white')
	for ii = 1:naxes
		axs(ii) = subplot(subplots(1), subplots(2),ii);
		hold(axs(ii), 'on');
		set(axs(ii), 'fontsize', 12)
	end
end
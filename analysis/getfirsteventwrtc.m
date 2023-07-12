function [first_event_s, first_event_wrtc] = getfirsteventwrtc(events_s, cue_s)
    [~, ~, events] = histcounts(events_s, cue_s);
	[fLick_trial_num, idx_event, ~] = unique(events);
	if fLick_trial_num(1) == 0
		fLick_trial_num = fLick_trial_num(2:end);
		idx_event = idx_event(2:end);
    end
	first_event_s = events_s(idx_event);
    
    first_event_wrtc = nan(size(cue_s));
    first_event_wrtc(fLick_trial_num) = first_event_s - cue_s(fLick_trial_num);
end
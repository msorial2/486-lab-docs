lab1;

function mp = max_overshoot(damping_ratio)
    if damping_ratio > 0 && damping_ratio < 1
        mp = exp((-pi*damping_ratio)/(sqrt(1-damping_ratio^2)))*100;
    else
        mp = 0;
    end
end

function tr = time_rising(damping_ratio, freq)
    if damping_ratio > 0 && damping_ratio < 1.2
        tr = (1.2 - 0.45*damping_ratio + 2.6*damping_ratio^2);
    elseif damping_ratio >=1.2 && damping_ratio < 3
        tr = ((4.7*damping_ratio - 1.2)/(freq));
    else
        tr = 0;
    end
end

function ts = time_settle(damping_ratio, freq)
    if damping_ratio > 0 && damping_ratio <= 0.69
        ts = (-0.5/(damping_ratio*freq))*log((1-damping_ratio^2)/400);
    elseif damping_ratio >0.69 && damping_ratio < 3
        ts = (6.6*damping_ratio - 1.6)/freq;
    else
        ts = 0;
    end
end

damp_ratios = [2, 1.5, 1, 0.8, 0.7, 0.5, 0.3, 0.2];

%Print out table 
fprintf("Theoretical Values\n");
for idx = damp_ratios
    freq = 1; % Linearized Time so natural frequency is 1
    mp = max_overshoot(idx);
    ts = time_settle(idx, freq);
    tr = time_rising(idx, freq);
    fprintf('Damping Ratio: %.2f, Max Overshoot: %.4f, Rise Time: %.4f, Settling Time: %.4f\n', idx, mp, tr, ts);
end

responses = {y2, y3, y1, y4, y5, y6, y7, y8};

fprintf("Experimental Values\n");
for idx = 1:length(responses)
    data = responses{idx};
    freq = 1; % Linearized Time so natural frequency is 1
    s = stepinfo(data(:,2), data(:,1));
    mp = s.Overshoot;
    ts = s.SettlingTime;
    tr = s.RiseTime;
    fprintf('Damping Ratio: %.2f, Max Overshoot: %.4f, Rise Time: %.4f, Settling Time: %.4f\n', damp_ratios(idx), mp, tr, ts);
end

plot(y5(:,1),y5(:,2), '-')








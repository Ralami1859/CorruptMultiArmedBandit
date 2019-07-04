%% COrruption function used in the ccorrupted bandit (exponential behavior controlled by param)
% Inputs:   inv -> binary variable (inverse or not)
%           up -> binary variable (increasing or not)
function y =CorruptionFunction(param,x, inv, up)
    if length(x) ~= length(up)
        error('vectors with different sizes')
    else
        y = zeros(1,length(up));
        if inv == 1
            for n = 1:length(up)
                if up(n) ==1
                    y(n) = fct_corruption_inv(param,x(n));
                elseif up(n) ==0
                    y(n) = fct_corruption_inv_dec(param,x(n));
                else
                    error('up is binary')
                end
            end
        elseif inv == 0
            for n = 1:length(up)
                if up(n) ==1
                    y(n) = fct_corruption(param,x(n));
                elseif up(n) ==0
                    y(n) = fct_corruption_dec(param,x(n));
                else
                    error('up is binary')
                end
            end
        else 
            error('inv is binary')
        end
    end
%% example of an iversed version of a corrupted function for the corrupted bandits.
function y = fct_corruption_inv(param,x)
    y = (1-exp(-param*x))./(1-exp(-param));
end
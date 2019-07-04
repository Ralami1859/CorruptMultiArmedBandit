%% example of an iversed version of a corrupted function (decreasing) for the corrupted bandits.
function y = fct_corruption_inv_dec(param,x)
    y = 1-(1-exp(-param*x))./(1-exp(-param));
end
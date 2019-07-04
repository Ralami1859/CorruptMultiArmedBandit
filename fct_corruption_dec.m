function x = fct_corruption_dec(param,y)
    x = -1./param.*log(1-(1-exp(-param))*(1-y)) ;
end
function x = fct_corruption(param,y)
    x = -1./param.*log(1-(1-exp(-param))*y) ;
end
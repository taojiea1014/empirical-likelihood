function y = sample()
    u = rand;
    if u < 0.5
        y = normrnd(0,1);
    else
        y = exprnd(2);
    end
    
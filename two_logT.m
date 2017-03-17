function y = two_logT(lamda,x, u)
    n = length(x);
    temp = x - u;
    y = 2*sum(log(1-lamda/n*temp));
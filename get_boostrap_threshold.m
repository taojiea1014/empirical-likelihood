%   get threshold of test statistics 2log(T) using boostrap method 
function y = get_boostrap_threshold(iter,x,level_alpha)
    n = length(x);
    u0 = mean(x);
    for i = 1:iter
        data = datasample(x,n);
        z(i) = test_mean(data,u0);
    end
    temp = 100-level_alpha*100;
    y = prctile(z,temp);

%   grid search for confidence interval of quantiles
%   x is data
%   alpha is quantile
%   beta is confidence level
%   res is grid search resolution
function [y1,y2]=theta_quantile_CI(x,alpha, beta, res)
    threshold = -0.5*ncx2inv(1-beta,1,0);
    x1 = min(x);
    xend = max(x);
    result = [];
    cur = x1;
    n = length(x);
    while (cur <= xend)
        r=sum(x<=cur);
        if r*log(n*alpha/r)+(n-r)*log(n*(1-alpha)/(n-r))>threshold;
            result = [result, cur];
        end
        cur = cur + res;
    end
    y1=result(1);
    y2=result(length(result));

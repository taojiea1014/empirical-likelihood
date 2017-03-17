%   x is data, which must be scalar, horizontal vector.
%   method is the method used to determine threshold according to difference distribution
%   'boostrap' is using boostrap 2log(T) distribution
%   'chisq' is using approximately chisquare distribution with degree freedom of 1.
%   level_alpha is the alpha used in 'chisqure'
%   res is the grid search resolution
%   iter is the number of iteration in 'boostrap method'
function [y1, y2]=find_confidence_inteval(x,method, level_alpha, res,iter) 
    if strcmpi(method,'boostrap')
        threshold = get_boostrap_threshold(iter,x,level_alpha);
    end
    if strcmpi(method,'chisq')
        threshold = ncx2inv(1-level_alpha,1,0);
    end
    x1 = min(x);
    x_end = max(x);
    u_candi = x1;
    result=[];
    while (u_candi <= x_end)
        %Newton's method with iteration 1000, initial value 0.11
        lamda = find_lamda(0.11, 1000,x,u_candi);
        if two_logT(lamda,x, u_candi)<threshold
            result = [result, u_candi];
        end
            
        u_candi = u_candi + res;
    end
    y1 = result(1);
    y2 = result(length(result));

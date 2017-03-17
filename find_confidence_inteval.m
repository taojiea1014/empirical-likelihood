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
        lamda = find_lamda(0.11, 1000,x,u_candi);
        if two_logT(lamda,x, u_candi)<threshold
            result = [result, u_candi];
        end
            
        u_candi = u_candi + res;
    end
    y1 = result(1);
    y2 = result(length(result));
%   return the test statistics 2log(T) given data and u
function y = test_mean(x,u0)
    %get lamda using newton method
    lamda = find_lamda(0.11, 20,x,u0);
    y = two_logT(lamda,x, u0);

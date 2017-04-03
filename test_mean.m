%   return the test statistics 2log(T) given data and u, x is the data in a horizontal vector, u0 is the mean value we want to test
function y = test_mean(x,u0)
    %get lamda using newton method
    lamda = find_lamda(0.11, 20,x,u0);
    y = two_logT(lamda,x, u0);

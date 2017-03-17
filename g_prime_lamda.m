function y = g_prime_lamda(x,u,lamda)
    n = length(x);
    temp = x - u;
    y = temp.^2*(1./(n-lamda*temp).^2)';
    
    
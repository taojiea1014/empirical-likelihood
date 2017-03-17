%   solve lamda using Newton' method
function y = find_lamda(initial, iter,x,u)
    lamda(1) = initial - g_lamda(x, u, initial)/g_prime_lamda(x,u,initial);
    for i = 2:iter
        lamda(i) = lamda(i-1)-g_lamda(x,u,lamda(i-1))/g_prime_lamda(x,u,lamda(i-1));
    end
    y = lamda(iter);
    
        
       
        

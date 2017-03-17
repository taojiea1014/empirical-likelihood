%x is  horizontal vector
function y = g_lamda(x,u,lamda)
    n = length(x);
    temp = x - u;
    y = temp*(1./(n-lamda*temp))';
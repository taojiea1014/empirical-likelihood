clear;
load('x_200.mat');
test_mean(x_200, 1); %get 2log(T)
[y1,y2] = find_confidence_inteval(x_50,'boostrap', 0.05, 0.02,1000) %0.05 is alpha in 'chisq', 0.02 is search resolution, 1000 is boostrap samples in 'boostrap'
[y3,y4] = find_confidence_inteval(x_50,'chisq', 0.05, 0.02,1000)

[y5,y6]=theta_quantile_CI(x_50,0.75, 0.05, 0.02)



[y7,y8] = find_confidence_inteval(x_200,'boostrap', 0.05, 0.02,1000)
[y9,y10] = find_confidence_inteval(x_200,'chisq', 0.05, 0.02,1000)

[y11,y12]=theta_quantile_CI(x_200,0.75, 0.05, 0.02)

    

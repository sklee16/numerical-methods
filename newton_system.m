%Newton’s Method NonLinear Systems
function ret = newton_system (initial_vector,M, tolerance)

x = initial_vector;
for iteration = 1:M
    
    x1 = @(x) x(1) +exp(-x(1))+x(2)^3;
    x2 = @(x) x(1)^2 + 2*x(1)*x(2)-x(2)^2 + tan(x(1));
    funcx = {x1, x2};
    
    calcx = funcx{1};
    calcx2 = funcx{2};
    F(1, 1) = calcx(x);
    F(2, 1) = calcx2(x);
    
    j11 = @(x) 1 - exp(-x(1));
    j12 = @(x) 3*x(2)^2;
    j21 = @(x)(sec(x(1)))^2 +2*x(1) + 2*x(2);
    j22 = @(x) ((-2)*x(2))+(2*x(1));
    jacobian = {j11, j12; j21, j22};
    jac_calc11 = jacobian{1,1};
    jac_calc12 = jacobian{1,2};
    jac_calc21 = jacobian{2,1};
    jac_calc22 = jacobian{2,2};
    J(1,1) = jac_calc11(x);
    J(1,2) = jac_calc12(x);
    J(2,1) = jac_calc21(x);
    J(2,2) = jac_calc22(x);
    
    inverseJ = inv(J);
    H_vector = - inverseJ*F;
    x_k1 = x + H_vector;
    fprintf("Iteration: %d\nX_k1(1): %.15f\nX_k1(2): %.15f\ndel: %.15f\n\n", iteration, x_k1(1), x_k1(2), norm(H_vector, 2));
    
    if norm(H_vector,2) < tolerance
        break
    end
    
    x = x_k1;
    
end


ret = 1;
end
%Newton’s Method
function ret = newton (initial_guess, M, tolerance, error)
iteration = 0;

guess = initial_guess;
fprintf("Iteration: %d\nx: %d\n\n", iteration, guess);

for iteration = 1:M
    func_value = ((((sec(guess))^2)/(guess^2))) - (((2*(tan(guess)))/(guess^3)));
    der_value = (((2*guess^2*(sec(guess))^2 + 6)*tan(guess))-(4*guess*(sec(guess))^2))/guess^4;
    
    x_k1 = guess - (func_value/der_value);
    
    del = abs(func_value / der_value);
    fprintf("Iteration: %d\nx: %.15f\ndel: %.15f\n\n", iteration, x_k1, del);
    
    if (del < tolerance) || (abs(func_value) < error)
        break
    end
    
    guess = x_k1;
    
end


ret = 1;
end

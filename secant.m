%Secant Method
function ret = secant (initial_guess, prev_initial_guess, M, tolerance, error)

guess= initial_guess;
prev_guess = prev_initial_guess;

for iteration = 2:M
    if(abs(guess) > error) && (abs(prev_guess) > error)
        func_value = ((((sec(guess))^2)/(guess^2))) - (((2*(tan(guess)))/(guess^3)));
        prev_func_value = ((((sec(prev_guess))^2)/(prev_guess^2))) - (((2*(tan(prev_guess)))/(prev_guess^3)));
    end
    
    if (abs(guess) < error) || (abs(prev_guess) < error)
        func_value = 1;
        prev_func_value = 1;
    end
    
    x_k1= guess - func_value*((guess - prev_guess)/(func_value - prev_func_value));
    
    del = abs(func_value);
    fprintf("Iteration: %d\nx: %.15f\ndel: %.15f\n\n", iteration, x_k1, del);
    
    if (del < tolerance) || (abs(prev_guess - guess) < error)
        break
    end
    
    
    prev_guess = guess;
    guess = x_k1;
    
end


ret = 1;
end

%Newton’s Method with Horner's Algorithm
function ret = newton_horner (initial_guess, func_coeff, der_coeff, M, tolerance, error)

iteration = 0;

guess= initial_guess;
fprintf("Iteration: %d\nx: %d\n\n", iteration, guess);

for iteration = 1:M
    if(abs(guess) > (10^(-12)))
        func_value = horner(guess, func_coeff);
        der_value = horner(guess,der_coeff);
    end
    
    if (abs(guess) < (10^(-12)))
        func_value = 1;
        der_value = 0;
    end
    
    x_k1 = guess - (func_value/der_value);
    del = abs(func_value / der_value);
    fprintf("Iteration: %d\nx: %.15f\ndel: %.15f\n\n", iteration, x_k1, del);
    
    if (del < tolerance) || (abs(func_value) < error)
        break
    end
    
    guess = x_k1;
    
end

% fprintf("\nFinal\nInitial Guess: %d\nIteration: %d\nRoot: %d\n", initial_guess, iteration, sol);

ret = 1;
end

function poly = horner(x, a)
max_steps = length(a);
b = a(length(a));

for step = (max_steps - 1):-1:1
    b_x1 = a(step) + x*b;
    b = b_x1;
    
end
poly = b;
end

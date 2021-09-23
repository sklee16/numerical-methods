I. File List
------------
newton.m		Newton's Method Implementation
newton_system.m		Newton's Method for Systems of Nonlinear Equations Implementation
secant.m		Secant Method Implementation
newton_horner.m		Newton's Method with Horner's Algorithm Implementation

II. Program Run
---------------
A. newton.m
To generate the result for problem 1.1, run the following command: 
newton(1, 5, 1e-16, 1e-12)

B. newton_system.m
To generate the result for problem 1.2, run the following command: 
newton_system([3; -1.5], 10, 1e-14)

C. secant.m
To generate the result for problem 2.1, run the following command: 
secant(2, 1, 10, 1e-16, 1e-12)

D. newton_horner.m
To generate the results for problem 3.1, run the following commands:
newton_horner(0.11, [1; -16; 61; 24; 2], [-16; 122; 72; 8], 10, 1e-16, 1e-12)
newton_horner(0.14, [1; -16; 61; 24; 2], [-16; 122; 72; 8], 10, 1e-16, 1e-12)
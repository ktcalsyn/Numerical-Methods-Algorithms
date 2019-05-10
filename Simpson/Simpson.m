function [I] = Simpson(x,y)
% Approximates integral with Simpson's 1/3 Rule
% (Uses trapezoidal rule if there is an odd # of intervals)
% Integrates function values "y" with respect to "x"
if length(x)~=length(y)
    disp("Error:x and y are not the same length")
end
% checks that x and y are the same length
n=length(x);
spac=linspace(x(1,1),x(end),n);
if spac~=x
    disp("Error: x is not evenly spaced")
end
I=0
% checks that x has even spacing
if mod(n-1,2)==1
    disp("Warning: trapezoidal rule used on last interval (b/c odd spacing)")
    %     checks if odd number of intervals (if yes... use trapezoidal for
    %     last)
    I_trap=(x(end)-x(end-1))*((y(end)+y(end-1))/2);
    h=x(2)-x(1);
    I_simp=0;
    for i=1:n-3
        I_simp=I_simp+h/3*(y(i)+4*y(i+1)+y(i+2));
    end
    I=I_simp+I_trap
    % Performs Trapezodial on last interval
else
    h=x(2)-x(1);
    for i=1:3:n-2
        I=I+h/3*(y(i)+4*y(i+1)+y(i+2))
    end
    % Even intervals so only Simpson's is used to evaluate
end
end





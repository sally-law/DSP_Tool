%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Two methods for inverse Z-transform 
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% EXAMPLE %

% GIVEN:  X(z)  = z(z+1) / (z-0.5)(z+0.5)
%               = (1+z^-1) / (1-0.5 z^-1)(1+0.5z^-1)
% abs(z) > 0.5;

p1 = poly(0.5);   %where 0.5 is the pole of the polynomial
p2 = poly(-0.5); % generation of terms in denominator 
a = conv(p1,p2) % denominator coefficients

z1 = poly(0); 
z2 = poly(-1); % generation of terms in numerator
b = conv(z1,z2) % numerator coefficients

z = roots(b) % zeros of X(z)
[r,p,k] = residuez(b,a) % partial fraction expansion, poles and gain zplane(b,a) % plot of poles and zeros

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% calling my own function %%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
ztran_pole_zero_plot(b,a);      % plot pole_zero_plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

d = [1 zeros(1,15)]; % impulse delta[n]
x = filter(b,a,d); % x[n] computation from filter

n = 0:15;
x1=r(1)*p(1).^n+r(2)*p(2).^n; %x[n] computation from residues

stem(n, x1);

%solution:  
% a = 1.0000 
% b=110
% z=0, -1
% r = 1.5000, -0.5000
% p = 0.5000, -0.5000, 0, -0.2500




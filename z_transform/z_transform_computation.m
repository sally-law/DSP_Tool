%%%%%%%%%%%%%%%%%%%%% % Z-transform computation %%%%%%%%%%%%%%%%%%%%%


%%%%% EXAMPLE %%%%%
syms n w0

% h1[n] = 0.9* u[n]
h1 = 0.9.^n;
H1 = ztrans(h1)

% h2[n] = u[n] - u[n-10]
h2 = heaviside(n) - heaviside(n-10);
H2 = ztrans(h2) 

% h3[n] = cos(w0*n)* u[n]
h3 = cos(w0*n)* heaviside(n); 
H3 = ztrans(h3)

% h4[n] = hsigna1[n]*h2[n]
H4 = ztrans(h1 * h3)

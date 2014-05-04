function laplace_pole_zero_plot(num,den) 

disp('>>>>> Laplace Zeros <<<<<')
z = roots(num) 
[r,p,k]=residue(num,den); 

disp('>>>>> Laplace Poles <<<<<') 
p

disp('>>>>> Laplace Residues <<<<<') 
r

splane(num,den)

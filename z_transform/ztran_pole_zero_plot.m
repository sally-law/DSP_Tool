function ztran_pole_zero_plot(num,den) 

disp('>>>>> z-transform Zeros <<<<<')
z = roots(num) 
[r,p,k]=residuez(num,den); 

disp('>>>>> z-transform Poles <<<<<') 
p

disp('>>>>> z-transform Residues <<<<<') 
r

zplane(num,den)

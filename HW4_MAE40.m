clear, close all, syms s Vm Vs C L R R1 R2
% x=[Vout; Ic; Ir, Il]  <-- unknown vector   
A = [ C*s  -1   0 0;  
      0 0 0 L*s; 
1    0   R 0;  
       0    1  1 1]; 
b =[0; Vm; 0; 0]; x=A\b;
transfunc=simplify(x(1)/Vm)
transfunc =
-R/(L*s*(C*R*s - 1))
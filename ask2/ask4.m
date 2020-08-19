p=[-1.00001 -1.0001 -1.0000001 -1.000001]; %bazume tous polous sto -1
L=place(A',C',p)'; %briskume ton paratiriti katastasis
xar_pol=expand(det([Is-A+L*C])); %xaraktiristiko polionimo
%ftiahnoume anatrofodothsh K etsi wste na einai efstathes 
%h mhtra (A-KK) opou KK =L*C
K4=[2 0;21.6 0;0 2;-0.5 0];
xar_pol=expand(det(Is-(A-K4*C)));
roots([1 4 6 3.96593 0.99]);
%erwthma 1
kp=1;
kd=1.946*10^(-3);
k=182;

%erwthma 2
kb=26.3;
kbp=1;
ki=193*kbp;


%use pid tool
Td=0.0044013;
Ti=0.035432;
nominator=[2.717*10^9];
denominator=[1   3408.26 3008*400.26  0];
transfer=tf(nominator,denominator);
kp3=0.57;
kd3=kp3*Td;
ki3=kp3/Ti;

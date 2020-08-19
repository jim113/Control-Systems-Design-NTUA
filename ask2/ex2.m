A=[0 1 0 0;20.6 0 0 0;0 0 0 1;-0.5 0 0 0]; %pinakas A systhmatos
B=[0;-1;0;0.5];%pinakas B systhmatos
C=[1 0 0 0;0 0 1 0]; %pinakas C systhmatos
D=[0;0]; %pinakas D systimatos
syms s  %symvolikh metavlhth s
Is=s*eye(4); %pinakas sI
ch_eq=det(Is-A); %xarakthristikh exiswsh 

%pinakas elegximothtas
S=[B A*B A*A*B A*A*A*B];
S_dt=det(S) %h orizousa tou S einai peripou 96, ara to susthma einai elegximo
S_inv=inv(S) ;


q=S_inv(end,:); %teleftaia grammh tou adistrofou tou S
T=[q;q*A;q*A*A;q*A*A*A]; %pinakas metasxhmatismou omoiothtas
T_inv=inv(T);%adistrofos pinakas tou T
Ac=T*A*T_inv; %pinakas A se eleximh morfh
Bc=T*B; %pinakas B se eleximh morfh

%orizoume tous polous pou theloume na exei to systhma mas
pole1=-20.0000000001; 
pole2=-20;
z=0.5;
Wn=4; %Ts=2 => 4/0.5*Wn=2 => Wn=4
pole3=-z*Wn+(Wn*sqrt(1-z^2))*i;
pole4=-z*Wn-(Wn*sqrt(1-z^2))*i;

poles=[pole1 pole2 pole3 pole4]; %oi poloi ws dianysma grammhs

%K=place(A,B,poles); % me th vohtheia afths ths synarthshs 
%vriskoume to gain pou tha xrhshmopoihsoume
ad=[6374.3 2232.2 594.7 43.9];
a0=[0 -103/5 0 0];
initial=[-0.2;-0.06;0.01;0.3]; %arxikes synthkes

K=(a0-ad)*T; %to apaitoumeno gain gia na valoume tous polous ekei pou prepei

K1=(ad-a0)*T; %kerdos me negative feedback 



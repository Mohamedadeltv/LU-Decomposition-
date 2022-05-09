a1=3; 
a2=-0.1;
a3=-0.2;
b1=O.1; 
b2=7; 
b3=-0.3; 
c1=0.3; 
c2=-0.2;
c3=10;
Constant1=7.89;
Constant2=-19.3;
Constant3=71.4;

%Creating Constants Matrix 
C=[Constant1; Constant2; Constant3]; 
u=L=[a1 a2 a3;b1 b2 b3;c1 c2 c3]; 
L=[a1 a2 a3;b1 b2 b3;c1 c2 c3]; 
 
%reducing u matrix to final form 

%reducing 3rd Row to obtain at C1 position 
n=c1/a1; 

c3=c3-n*a3; 
c2=c2-n*a2; 
c1=c1-n*a1; 

%reducing 2nd Row to obtain at B1 position 
m=b1/a1; 

b3=b3-n*a3; 
b2=b2-n*a2; 
b1=b1-n*a1; 

%reducing 3rd Row to obtain at C2 position 
p=c2/b2; 

c3=c3-p*b3; 
c1=c1-p*b1; 
c2=c2-p*b2; 

u=L=[a1 a2 a3;b1 b2 b3;c1 c2 c3]; 
L=[a1 a2 a3;b1 b2 b3;c1 c2 c3]; 

%U,L
Solving for D matrix 

D= linsolve(L,C);

D
%Solving for X matrix 
X= linsolve(u,D);

X 
fprintf('X1=%f\n',X(1)); 
fprintf('X2=%f\n',X(2)); 
fprintf('X3=%f\n',X(3)); 
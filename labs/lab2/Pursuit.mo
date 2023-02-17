model Pursuit
parameter Real a=sqrt(20.16);
parameter Real k1= 18.4/5.6;
parameter Real k2 = 18.4/3.6;
constant Real pi = 3.14;
//Real theta(start=-pi/2); 
//Real r(start=k1);
Real r(start=k2);
Real theta(start=-3*pi/2);
Real x(start=0);
Real y(start=0);
Real r1(start=0);
Real f1(start=0);
equation
x = time;
y = -x;
der(r) = 1;
der(theta) = a / r;
r1 = r*cos(theta);
f1 = -r*sin(theta);
end Pursuit;
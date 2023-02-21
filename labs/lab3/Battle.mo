model Battle
parameter Integer x0 = 21000;
parameter Integer y0 = 9850;
parameter Real a = 0.44;
parameter Real b = 0.83;
parameter Real c = 0.45;
parameter Real h = 0.71;
/* parameter Real a = 0.31;
parameter Real b = 0.78;
parameter Real c = 0.25;
parameter Real h = 0.71; */
Real P;
Real Q;
Real x(start=x0);
Real y(start=y0);
equation
P = cos(time) + 1;
Q = sin(time) + 1;
der(x) = -a * x - b * y + P;
der(y) = -c * x - h * y + Q;
/* P = abs(cos(2*time));
Q = abs(sin(4*time));
der(x) = -a * x - b * y + P; 
der(y) = -c * x * y - h * y + Q; */
end Battle;
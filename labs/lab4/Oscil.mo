model Oscil
parameter Real x0 = 0.7;
parameter Real y0 = -0.7;
parameter Real omega = 7.7;
parameter Real gamma = 7;
Real P;
Real x(start=x0);
Real y(start=y0);
equation
P = 0.7*sin(7*time);
der(x) = y;
//der(y) = -omega*x;
//der(y) = -gamma*der(x)-omega*x;
der(y) = P-gamma*der(x)-omega*x;
end Oscil;



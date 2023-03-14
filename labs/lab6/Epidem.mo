model Epidem
parameter Integer N = 18354;
parameter Integer I0 = 102;
parameter Integer R0 = 100;
parameter Integer S0 = N - I0 - R0;
parameter Real alpha = 0.01;
parameter Real beta = 0.02;
Real S(start=S0);
Real I(start=I0);
Real R(start=R0);
equation
//der(S) = 0;
//der(I) = -beta*I;
//der(R) = beta*I;
der(S) = -alpha*S;
der(I) = alpha*S - beta*I;
der(R) = beta*I;
end Epidem;

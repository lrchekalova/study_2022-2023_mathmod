model Advert
parameter Real N = 1234;
parameter Real N0 = 7;
Real n(start=N0);
equation
// 1 случай
der(n) = (0.618 + 0.000013*n)*(N - n);
// 2 случай
//der(n) = (0.0000117 + 0.25*n)*(N - n);
// 3 случай
//der(n) = (0.5*sin(10*time) + 0.4*cos(2*time)*n)*(N - n);
end Advert;

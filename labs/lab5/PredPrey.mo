model PredPrey
parameter Integer x0 = 9;
parameter Integer y0 = 29;
parameter Real a = 0.37;
parameter Real b = 0.064;
parameter Real c = 0.27;
parameter Real d = 0.068;
Real x(start=x0);
Real y(start=y0);
equation
der(x) = -c*x+d*x*y;
der(y) = a*y-b*x*y;
end PredPrey;

model Firm
constant Real M0_1 = 6.5;
constant Real M0_2 = 5.5;
constant Real p_cr = 35;
constant Real N = 30;
constant Real q = 1;
constant Real tau1 = 16;
constant Real tau2 = 20;
constant Real p1 = 9.9;
constant Real p2 = 8.5;
parameter Real a1 = p_cr/(tau1^2*p1^2*N*q);
parameter Real a2 = p_cr/(tau2^2*p2^2*N*q);
parameter Real b = p_cr/(tau1^2*tau2^2*p1^2*p2^2*N*q);
parameter Real c1 = (p_cr - p1)/(tau1*p1);
parameter Real c2 = (p_cr - p2)/(tau2*p2);
Real M1(start=M0_1);
Real M2(start=M0_2);
equation
der(M1) = M1 - b/c1*M1*M2 - a1/c1*M1^2;
der(M2) = c2/c1*M2 - b/c1*M1*M2 - a2/c1*M2^2;
//der(M1) = M1 - (b/c1 + 0.00065)*M1*M2 - a1/c1*M1^2;
end Firm;

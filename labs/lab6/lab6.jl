using Plots
using DifferentialEquations

const N = 18354
const I0 = 102
const R0 = 100

const alpha = 0.01 
const beta = 0.02

S0 = N - I0 - R0

T = (0, 200)

u0 = [S0, I0, R0]

p1 = (beta)

# I0 < I*

function F1(du, u, p, t)
    beta = p
    du[1] = 0
    du[2] = -beta*u[2]
    du[3] = beta*u[2]
end

prob1 = ODEProblem(F1, u0, T, p1)
sol1 = solve(prob1, dtmax=0.01)

plt = plot(sol1, vars=(0,1), color=:red, label="S(t)", title="Изменения числа особей в группе S", xlabel="t")
plt2 = plot(sol1, vars=(0,2), color=:blue, label="I(t)", title="Изменения числа особей в группах I и R", xlabel="t")
plot!(plt2, sol1, vars=(0,3), color=:green, label="R(t)")

savefig(plt, "lab6_1S.png")
savefig(plt2, "lab6_1RI.png")

# I0 > I*

p2 = (alpha, beta)

function F2(du, u, p, t)
    alpha, beta = p
    du[1] = -alpha*u[1]
    du[2] = alpha*u[1]-beta*u[2]
    du[3] = beta*u[2]
end

#prob2 = ODEProblem(F2, u0, T, p2)
#sol2 = solve(prob2, dtmax=0.01)

#plt = plot(sol2, vars=(0,1), color=:red, label="S(t)", title="Изменения числа особей в группах", xlabel="t")
#plot!(plt, sol2, vars=(0,2), color=:blue, label="I(t)")
#plot!(plt, sol2, vars=(0,3), color=:green, label="R(t)")

#savefig(plt, "lab6_2.png")


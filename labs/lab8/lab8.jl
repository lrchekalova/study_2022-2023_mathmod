using Plots
using DifferentialEquations

const M0_1 = 6.5
const M0_2 = 5.5
const p_cr = 35
const N = 30
const q = 1
const tau1 = 16
const tau2 = 20
const p1 = 9.9
const p2 = 8.5

a1 = p_cr/(tau1^2*p1^2*N*q)
a2 = p_cr/(tau2^2*p2^2*N*q)
b = p_cr/(tau1^2*tau2^2*p1^2*p2^2*N*q)
c1 = (p_cr - p1)/(tau1*p1)
c2 = (p_cr - p2)/(tau2*p2)

T = (0, 30)

u0 = [M0_1, M0_2]

# 1 случай

function F1(du, u, p, t)
    du[1] = u[1] - b/c1*u[1]*u[2] - a1/c1*u[1]^2
    du[2] = c2/c1*u[2] - b/c1*u[1]*u[2] - a2/c1*u[2]^2
end

prob1 = ODEProblem(F1, u0, T)
sol1 = solve(prob1, dtmax=0.01)

plt1 = plot(sol1, vars=(0, 1), color=:red, title="Изменение оборотных средств фирм, 1", legend=true, label="Фирма 1")
plot!(plt1, sol1, vars=(0, 2), color=:blue, label="Фирма 2")

savefig(plt1, "lab8_1.png")

# 2 случай

function F2(du, u, p, t)
    du[1] = u[1] - (b/c1 + 0.00065)*u[1]*u[2] - a1/c1*u[1]^2
    du[2] = c2/c1*u[2] - b/c1*u[1]*u[2] - a2/c1*u[2]^2
end

prob2 = ODEProblem(F2, u0, T)
sol2 = solve(prob2, dtmax=0.01)

plt2 = plot(sol2, vars=(0, 1), color=:red, title="Изменение оборотных средств фирм, 2", legend=true, label="Фирма 1")
plot!(plt2, sol2, vars=(0, 2), color=:blue, label="Фирма 2")

savefig(plt2, "lab8_2.png")
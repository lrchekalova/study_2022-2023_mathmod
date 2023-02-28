using Plots
using DifferentialEquations

const x0 = 0.7
const y0 = -0.7
const omega = 7.7
const gamma = 7

P(t) = 0.7*sin(7*t)

T = (0, 77)

u0 = [x0, y0]

p1 = (omega)
p2 = (omega, gamma)

function F1(du, u, p, t)
    omega = p
    du[1] = u[2]
    du[2] = -omega*u[1]
end

prob1 = ODEProblem(F1, u0, T, p1)
sol1 = solve(prob1, dtmax=0.05)

plt = plot(sol1, vars=(2,1), color=:red, label="Фазовый портрет", title="Случай №1", xlabel="x", ylabel="y")
plt2 = plot(sol1, vars=(0,1), color=:blue, label="x(t)", title="Случай №1", xlabel="t")
plot!(plt2, sol1, vars=(0,2), color=:green, label="y(t)")

savefig(plt, "lab4_1_1.png")
savefig(plt2, "lab4_1_2.png")

function F2(du, u, p, t)
    omega, gamma = p
    du[1] = u[2]
    du[2] = -gamma*du[1]-omega*u[1]
end

#prob2 = ODEProblem(F2, u0, T, p2)
#sol2 = solve(prob2, dtmax=0.05)

#plt = plot(sol2, vars=(2,1), color=:red, label="Фазовый портрет", title="Случай №2", xlabel="x", ylabel="y")
#plt2 = plot(sol2, vars=(0,1), color=:blue, label="x(t)", title="Случай №2", xlabel="t")
#plot!(plt2, sol2, vars=(0,2), color=:green, label="y(t)")

#savefig(plt, "lab4_2_1.png")
#savefig(plt2, "lab4_2_2.png")

function F3(du, u, p, t)
    omega, gamma = p
    du[1] = u[2]
    du[2] = P(t)-gamma*du[1]-omega*u[1]
end

#prob3 = ODEProblem(F3, u0, T, p2)
#sol3 = solve(prob3, dtmax=0.05)

#plt = plot(sol3, vars=(2,1), color=:red, label="Фазовый портрет", title="Случай №3", xlabel="x", ylabel="y")
#plt2 = plot(sol3, vars=(0,1), color=:blue, label="x(t)", title="Случай №3", xlabel="t")
#plot!(plt2, sol3, vars=(0,2), color=:green, label="y(t)")

#savefig(plt, "lab4_3_1.png")
#savefig(plt2, "lab4_3_2.png")
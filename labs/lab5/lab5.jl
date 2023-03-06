using Plots
using DifferentialEquations

const x0 = 9
const y0 = 29
const c = 0.27
const d = 0.068
const a = 0.37
const b = 0.064

T = (0, 400)

u0 = [x0, y0]

p = (a, b, c, d)

function F(du, u, p, t)
    a, b, c, d = p
    du[1] = -c*u[1]+d*u[1]*u[2]
    du[2] = a*u[2]-b*u[1]*u[2]
end

prob1 = ODEProblem(F, u0, T, p)
sol1 = solve(prob1, dtmax=0.1)

plt = plot(sol1, vars=(2,1), color=:red, label="Фазовый портрет", title="Зависимость численности хищников от численности жертв", xlabel="Численность жертв", ylabel="Численность хищников")
plt2 = plot(sol1, vars=(0,1), color=:blue, label="Численность хищников", title="Изменение численности хищников и жертв", xlabel="t")
plot!(plt2, sol1, vars=(0,2), color=:green, label="Численность жертв")

savefig(plt, "lab5_1.png")
savefig(plt2, "lab5_2.png")

x0_2 = a/b
y0_2 = c/d

u0_2 = [x0_2, y0_2]

prob2 = ODEProblem(F, u0_2, T, p)
sol2 = solve(prob2, dtmax=0.1)

plt3 = plot(sol2, vars=(2,1), seriestype=:scatter, color=:red, label="Фазовый портрет",
title="Зависимость численности хищников от численности жертв", xlabel="Численность жертв", ylabel="Численность хищников")

savefig(plt3, "lab5_3.png")
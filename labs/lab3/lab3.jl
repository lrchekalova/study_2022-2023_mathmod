using Plots
using DifferentialEquations

const x0 = 21000
const y0 = 9850

const a = 0.44
const b = 0.83
const c = 0.45
const h = 0.71

P(t) = cos(t) + 1
Q(t) = sin(t) + 1


# const a = 0.31
# const b = 0.78
# const c = 0.25
# const h = 0.71

# P(t) = abs(cos(2*t))
# Q(t) = abs(sin(4*t))

u0 = [x0, y0]
p = (a, b, c, h)

# T = (0, 0.001)

# function F(du, u, p, t)
#     a, b, c, h = p
#     du[1] = -a*u[1] - b*u[2] + P(t)
#     du[2] = -c*u[1]*u[2] - h*u[2] + Q(t)
# end

T = (0, 1.5)

function F(du, u, p, t)
    a, b, c, h = p
    du[1] = -a*u[1] - b*u[2] + P(t)
    du[2] = -c*u[1] - h*u[2] + Q(t)
end

prob = ODEProblem(F, u0, T, p)

sol = solve(prob)

plt = plot(sol, vars=(0,1), color=:red, label="Армия x", title="Модель боевых действий №1", ylabel="Численность армии")

# plt = plot(sol, vars=(0,1), color=:red, label="Армия x", title="Модель боевых действий №2", ylabel="Численность армии")

plot!(sol, vars=(0,2), color=:blue, label="Армия y", xlabel="Время")

# savefig(plt, "lab3_2.png")

savefig(plt, "lab3_1.png")
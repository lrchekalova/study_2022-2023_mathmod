using Plots

fi = 3pi/4
fi0_1 = 0
r0_1 = 18.4/5.6
fi0_2 = -pi
r0_2 = 18.4/3.6

function F1(theta, r0, fi0)
    return r0/exp(fi0/sqrt(20.16))*exp(theta/sqrt(20.16))
end

th = collect(0:0.01:2pi)
rth = F1.(th, r0_1, fi0_1)
r = F1.(fi, r0_1, fi0_1)

# th = collect(-pi:0.01:2pi)
# rth = F1.(th, r0_2, fi0_2)
# r = F1.(fi, r0_2, fi0_2)

x = r*cos(fi)
y = r*sin(fi)

@show x
@show y

plt = plot(
    proj=:polar,
    aspect_ratio=:equal,
    dpi=300,
    legend=true,
    title="Задача о погоне"
)

plot!(plt,
th,
rth,
xlabel="theta",
ylabel="r(theta)",
color=:red,
label="Траектория катера")

plot!(plt,
[fi, fi],
[0, 20],
xlabel="fi",
ylabel="r",
color=:green,
label="Траектория лодки")

plot!(plt,
[fi],
[r],
seriestype=:scatter,
color=:blue,
label="Точка пересечения катера и лодки")

savefig(plt, "lab2_1.png")
# savefig(plt, "lab2_2.png")

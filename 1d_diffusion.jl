using Oceananigans

grid = RectilinearGrid(size=128, z=(-0.5, 0.5), topology=(Flat, Flat, Bounded))
closure = ScalarDiffusivity(κ=1.0)
ScalarDiffusivity{ExplicitTimeDiscretization}(ν=0.0, κ=1.0)
model = NonhydrostaticModel(grid=grid, closure=closure, buoyancy=nothing, tracers=:T)

width = 0.1

initial_temperature(x, y, z) = exp(-z^2 / (2width^2))

set!(model, T=initial_temperature)

using Plots

z = znodes(model.tracers.T)

T_plot = plot(interior(model.tracers.T)[1, 1, :], z,
              linewidth = 2,
              label = "t = 0",
              xlabel = "Temperature (ᵒC)",
              ylabel = "z")

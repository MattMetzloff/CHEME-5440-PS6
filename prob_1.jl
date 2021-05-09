# Example for constructing a streamplot in Julia for phase portraits
# CHEME5440/7770 - Spring 2021
# The example makes use of Makie.jl and AbstractPlotting.jl for plotting
# To install the packages, use the following commands inside the Julia REPL:
#using Pkg
#Pkg.add("Makie")
#Pkg.add("AbstractPlotting")
using Makie
using AbstractPlotting
using AbstractPlotting.MakieLayout
AbstractPlotting.inline!(true)
# Model for precise adaptation
# Xa: active receptor state
# Xi: inactive receptor state
function precise_adapt(U, V)
    alpha = 10               #Vmax
    n = 1                    #cooperativity
    u = (alpha/(1+(V^n)))-U     #du/dt
    v = (alpha/(1+(U^n)))-V                                  #dv/dt
    
    return Point(u,v)
end
# Construct the streamplot
plt1 = Scene(resolution =(800,800))
streamplot!(plt1, precise_adapt, 0..12, 0..12, colormap = :plasma, 
    gridsize= (32,32), arrow_size = 0.15)
# Display the plot
display(plt1)
save("odeField_n=1.png", plt1)
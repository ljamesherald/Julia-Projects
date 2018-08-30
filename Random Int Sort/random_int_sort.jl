#=
    Logan Herald
    CS3800
    Programing Project 1
    Random Int Genorator and sorter
    due 2/5/2016
    This program calculates the volume
    of a cylinder, in cubic inches,
    given user intered height and
    diameter in inches
=#
#=
    tis is the decloration of my array.
    Because julia is a dynamicly typed language,
    i dont need to declare my variable type.
=#
random_array = [1,2,3]

n = 100000 #n represents my increment variable and can be used to controll the size of random_array

while length(random_array) != n
    x = rand() * 1000000
    x = trunc(Int64, x)
    x = mod(x,101)
    push!(random_array, x)
end
println(length(random_array))
println(random_array)

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
    this is the decloration of my array.
    Because julia is a dynamicly typed language,
    i dont need to declare my variable type.
=#

#this reporesents the run time before building and populating the array
run_time_before_array = time_ns()

# the rand function populates an array with random integers with a range of (0,100) and a size of 100 elements
random_array = rand(0:100, 100)

#this reporesents the run time after building and populating the array
run_time_after_array = time_ns()


println(length(random_array))
println(random_array)
# this fuction prints the total time it took to declare, and populate the array
println(e - b)

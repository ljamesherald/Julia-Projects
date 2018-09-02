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

#n reporesents the number of elements in my arra
n = 100

#this reporesents the run time before building and populating the array
run_time_before_array = time_ns()

# the rand function populates an array with random integers with a range of (0,100) and a size of n elements
random_array = rand(0:100, n)

#this reporesents the run time after building and populating the array
run_time_after_array = time_ns()

println(length(random_array))
println(random_array)
# this fuction prints the total time it took to declare, and populate the array
println(run_time_after_array - run_time_before_array)

#this is my bubble sort algortithm, which is pretty neat

#this reporesents the run time before sorting the array
run_time_before_bubble_sort = time_ns()
    for _ in 2:length(random_array), j in 1:length(random_array)-1
        if random_array[j] > random_array[j+1]
            random_array[j], random_array[j+1] = random_array[j+1], random_array[j]
        end
    end
#this reporesents the run time after sorting the array
run_time_after_bubble_sort = time_ns()

println((random_array))
# this fuction prints the total time it took to declare, and populate the array
println(run_time_after_bubble_sort - run_time_before_bubble_sort)

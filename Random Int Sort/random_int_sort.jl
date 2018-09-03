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

#this clones the array so i can preform another sorting algorithm on the same ccollecction
random_array_for_selection_sort = random_array
random_array_sort_function = random_array

println("number of random intigers in array: ", n)
println(random_array)
# this fuction prints the total time it took to declare, and populate the array
println("time to create/populate array: ", run_time_after_array - run_time_before_array, " ns")
println()

println("bubble sorting array")
println()

run_time_before_bubble_sort = time_ns()
#this is my bubble sort algortithm, which is pretty neat
for _ in 2:length(random_array), j in 1:length(random_array)-1
    if random_array[j] > random_array[j+1]
        random_array[j], random_array[j+1] = random_array[j+1], random_array[j]
    end
end
run_time_after_bubble_sort = time_ns()

println("Selection sorting array")
println()

run_time_before_selection_sort = time_ns()
#this is my selection sort
len = length(random_array_for_selection_sort)
if len < 2 return random_array_for_selection_sort end
for i in 1:len-1
    lmin, j = findmin(random_array_for_selection_sort[i+1:end])
    if lmin < random_array_for_selection_sort[i]
        random_array_for_selection_sort[i+j] = random_array_for_selection_sort[i]
        random_array_for_selection_sort[i] = lmin
    end
end
run_time_after_selection_sort = time_ns()

run_time_before_julia_sort = time_ns()
#tis is julias built in sorting funcction. It uses some sort of api to magicaly decide the best way to sort a collectio of elements
sort!(random_array_sort_function)
run_time_after_julia_sort = time_ns()


# this fuction prints the total time it took to bubble sort the array
println("time to bubble sort array: ", run_time_after_bubble_sort - run_time_before_bubble_sort, " ns")

# this fuction prints the total time it took to selection sort the array
println("time to selection sort array: ", run_time_after_selection_sort - run_time_before_selection_sort, " ns")

# this fuction prints the total time it took to sort the array using julias sort function
println("time to julia sort array: ", run_time_after_julia_sort - run_time_before_julia_sort, " ns")

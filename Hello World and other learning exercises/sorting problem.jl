N = 1000
random_array = rand(0:100, N)

b = time_ns()
sort!(random_array)
(random_array[div(N, 2)])
e = time_ns()
time_to_sort = (e - b)

println(time_to_sort * .0000001)

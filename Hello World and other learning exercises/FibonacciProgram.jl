function fib(n)
  if n <= 1
   return 1
  else
   return fib(n - 1) + fib(n - 2)
  end
 end


for i =  0:20
b_run_time = time_ns()
fib(i), "\n"
e_run_time = time_ns()
print(i, "\n")
print((e_run_time - b_run_time)/1000000, "\n")
end

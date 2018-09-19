function fib(n)
  if n <= 1
   return 1
  else
   return fib(n - 1) + fib(n - 2)
  end
 end


for i =  1:20
 colective_time = 0
 for j = 0:100
  b_run_time = time_ns()
  fib(i)
  e_run_time = time_ns()
  colective_time = colective_time + (e_run_time - b_run_time)
 end
 println(colective_time / 100)
end

function IterativeFib(n)
 x = 0
 y = 1
 for i = 1:n
   z = x + y
   y=x
   x=z
 end
end

for i =  1:20
 colective_time = 0
 for j = 1:100
  b_run_time = time_ns()
  IterativeFib(i)
  e_run_time = time_ns()
  colective_time = colective_time + (e_run_time - b_run_time)
 end
 println(colective_time / 100)
end

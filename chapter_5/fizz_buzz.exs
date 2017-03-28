fizz = fn
  { 0, 0, _ } -> "FizzBuzz"
  { 0, _, _ } -> "Fizz"
  { _, 0, _ } -> "buzz"
  { _, _, c } -> c
end

remFizz = fn (n) ->
  arg1 = rem(n,3)
  arg2 = rem(n,5)
  fizz.({ arg1, arg2, n })
end

IO.puts remFizz.(10)
IO.puts remFizz.(11)
IO.puts remFizz.(12)
IO.puts remFizz.(13)
IO.puts remFizz.(14)
IO.puts remFizz.(15)
IO.puts remFizz.(16)

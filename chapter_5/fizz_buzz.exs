fizz = fn
  { 0, 0, _ } -> 'FizzBuzz'
  { 0, _, _ } -> 'Fizz'
  { _, 0, _ } -> 'Fizz'
end

IO.puts fizz.({ 0, 0, 'baz' })
IO.puts fizz.({ 0, 'foo', 'baz' })
IO.puts fizz.({ 'foo', 0, 'baz' })
IO.puts fizz.({ 'foo', 'bar', 'baz' })

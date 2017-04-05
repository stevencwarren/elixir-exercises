defmodule Mylist do
  def len([]), do: 0
  def len([_head| tail]), do: 1 + len(tail)

  def square([]), do: []
  def square([ head | tail ]) do
    IO.puts [head | tail]
    [ head*head | square(tail) ]
  end

  def add_1([]), do: []
  def add_1([head | tail]), do: [ head + 1 | add_1(tail) ]

  def map([], _func), do: []
  def map([ head | tail], func), do: [func.(head) | map(tail, func)]

  #def sum([], total), do: total
  #def sum([head | tail], total), do: sum(tail, head + total)
  #
  def sum(list), do: _sum(list, 0)

  defp _sum([], total) do
    total
  end

  defp _sum([head | tail], total) do
    _sum(tail, head + total)
  end
end

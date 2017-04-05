defmodule MyList do
  def sum([head | []]), do: head
  def sum([head | tail]) do
    { operand, popped_list } = List.pop_at(tail, 0)

    sum([head + operand | popped_list])
  end
end

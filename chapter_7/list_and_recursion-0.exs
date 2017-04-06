defmodule MyList do
  def sum([head | []]), do: head
  def sum([head | tail]) do
    { value, popped_list } = List.pop_at(tail, 0)

    sum([head + value | popped_list])
  end
end

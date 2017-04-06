defmodule MyList do
  def max([max | []]), do: max

  def max([head | tail]) do
    { value, popped_list } = List.pop_at(tail, 0)

    max([ max_head(head, value) | popped_list ])
  end

  def max_head(head, value) when head >= value, do: head

  def max_head(head, value) when value > head, do: value
end

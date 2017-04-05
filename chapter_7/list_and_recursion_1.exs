require IEx
defmodule MyList do
  def mapsum(list, func) do
    mapped_list = _mapsum(list, func)
    sum(mapped_list)
  end

  def sum(list), do: _sum(list, 0)

  defp _mapsum([], _), do: []

  defp _mapsum([head | tail], func) do
    [func.(head) | _mapsum(tail, func) ]
  end

  defp _sum([], total) do
    total
  end

  defp _sum([head | tail], total) do
    _sum(tail, head + total)
  end
end

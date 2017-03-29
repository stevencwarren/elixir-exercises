defmodule Chop do
  def guess(actual, range) when div(range.last, 2) < actual do
    guess = div(range.last, 2)
    IO.puts "Is it #{guess}"
    Chop.guess(actual, 1..guess)
  end

  def guess(actual, range) when div(range.last, 2) > actual do
    guess = div(range.last, 2)
    IO.puts "Is it #{guess}"
    Chop.guess(actual, guess..1000)
  end

  def guess(actual, range) when div(range.last, 2) == actual do
    IO.puts div(range.last, 2)
  end
end

IO.puts Chop.guess(273, 1..1000)

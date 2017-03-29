require IEx;

defmodule Chop do
  def guess(actual, range) do
    diff = range.last - range.first
    current_guess = div(diff, 2) + range.first

    print_and_call(actual, range, current_guess)
  end

  def print_and_call(actual, range, current_guess) when current_guess > actual do
    IO.puts "Is it #{current_guess}"
    Chop.guess(actual, range.first..current_guess)
  end

  def print_and_call(actual, range, current_guess) when current_guess < actual do
    IO.puts "Is it #{current_guess}"
    Chop.guess(actual, (current_guess + 1)..range.last)
  end

  def print_and_call(actual, _, current_guess) when current_guess == actual do
    IO.puts current_guess
  end
end

IO.puts Chop.guess(273, 1..1000)

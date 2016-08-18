defmodule Recursive do
@doc """
“Exercise: ModulesAndFunctions-4
Implement and run a function sum(n) that uses recursion to calculate the sum of the integers from 1 to n. You’ll need to write this function inside a module in a separate file. Then load up iex, compile that file, and try your function.”

Excerpt From: Dave Thomas. “Programming Elixir.” iBooks.
"""
  def of(0), do: 1
  def of(n) when n > 0, do: n * of(n-1)

  def sum(1), do: 1
  def sum(n), do: n + sum(n-1)

  def gcd(x,0), do: x
  def gcd(x,y), do: gcd(y,rem(x,y))

  def guess(actual, range = low..high) do
    guess = div(low+high, 2)
    IO.puts "Is it #{guess}?"
    _guess(actual, guess, range)
  end

  defp _guess(actual, actual, _),
    do: IO.puts "Yes, it's #{actual}"

  defp _guess(actual, guess,  _low..high)
    when guess < actual,
    do: guess(actual, guess+1..high)

  defp _guess(actual, guess,  low.._high)
    when guess > actual,
    do: guess(actual, low..guess-1)

end

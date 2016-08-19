defmodule MyList do

  def sum(list), do: _sum(list, 0)

  defp _sum([], total), do: total
  defp _sum([head | tail], total), do: _sum(tail, head + total)


  def mapsum([], fun), do: _mapsum([], fun, 0)
  def mapsum(list, fun), do: _mapsum(list, fun, 0)

  defp _mapsum([], _fun, acc), do: acc
  defp _mapsum([head | tail], fun, acc), do: _mapsum(tail, fun, acc + fun.(head))

# Solucion del libro (no contempla la lista vacia)
#  def max([x]), do: x
# else recurse
#  def max([ head | tail ]), do: Kernel.max(head, max(tail))

  def max([]), do: "List is empty"
  def max([head | tail]), do: _max([head | tail], head)

  defp _max([], maxi), do: maxi
  defp _max([elem], max), do: Kernel.max(elem, max)
  defp _max([head | tail], maxi), do: _max(tail, Kernel.max(head, maxi))

  def span(from, to) when from > to, do: []
  def span(from, to), do: [from | span(from + 1, to)]

  end

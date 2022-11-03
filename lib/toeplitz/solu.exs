defmodule Solution do
  def perform(data) do
    loop(true, data, %{})
  end

  def loop(_result, [head | tail], acc) do
    head
    |> Enum.map(fn
      x ->
        acc

    end)

    loop(tail)
  end

  def loop([]) do
  end

  def loop_y() do
  end

  def loop_y() do
  end
end

matrix = [[1, 2, 3, 4], [5, 1, 2, 3], [9, 5, 1, 2]]

matrix |> Solution.perform()

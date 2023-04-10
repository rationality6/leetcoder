defmodule Solve do
  def run(num) do
    num_list =
      num
      |> Integer.to_string()

    half_length = (String.length(num_list) / 2) |> floor()
    IO.inspect(half_length)

    Enum.map(num_list, fn n -> n == 3 end)
  end

  def adding([a|b]) do

  end
end

Solve.run(1234321) |> IO.inspect()
# Solve.run(12321) |> IO.inspect()
# Solve.run(1224321) |> IO.inspect()
# Solve.run(1224321) |> IO.inspect()

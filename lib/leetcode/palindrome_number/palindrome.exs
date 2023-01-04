defmodule Solve do
  def run(num) do
    num_list =
      num
      |> to_charlist()

    half_length = (length(num_list) / 2) |> floor()

    Enum.find(num_list, fn n -> n == 3 end)
  end
end

Solve.run(1234321) |> IO.inspect()
# Solve.run(12321) |> IO.inspect()
# Solve.run(1224321) |> IO.inspect()
# Solve.run(1224321) |> IO.inspect()



"fooof" |> to_charlist() |> IO.inspect()
1234321 |> Integer.to_string() |> IO.inspect()

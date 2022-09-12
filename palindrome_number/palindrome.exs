defmodule Solve do
  def run(num) do
    num
    |> to_charlist()
    |> IO.inspect()
    |> Enum.each(fn n -> IO.inspect(n) end)
  end
end

Solve.run(1_234_321) |> IO.inspect()

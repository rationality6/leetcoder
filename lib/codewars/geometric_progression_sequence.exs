# In your class, you have started lessons about geometric progression.
# Since you are also a programmer,
# you have decided to write a function that will print first n elements of the sequence with the given constant r and first element a.

# Result should be separated by comma and space.

# Example
# Kata.geometric_sequence_elements(2, 3, 5) == "2, 6, 18, 54, 162"

defmodule Kata do
  def geometric_sequence_elements(a, r, n) do
    list_with_start_n = [a]

    2..n
    |> Enum.to_list()
    |> iterate_acc(r, list_with_start_n)
  end

  def iterate_acc([_head | body], number_times, [acc_head | _acc_tail] = acc) do
    acc = [number_times * acc_head | acc]

    iterate_acc(body, number_times, acc)
  end

  def iterate_acc([], _number_times, acc) do
    Enum.reverse(acc)
    |> Enum.join(", ")
  end
end

Kata.geometric_sequence_elements(2, 3, 5)
|> IO.inspect()

Kata.geometric_sequence_elements(3, 5, 7)
|> IO.inspect()

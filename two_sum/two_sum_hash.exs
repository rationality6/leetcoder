defmodule TwoSum do
  def run(nums, target) do
    maps = insert_to_map(nums)
    find_in_map(maps, nums, target)
  end

  def insert_to_map(nums) do
    nums
    |> Enum.with_index()
    |> Enum.reduce(%{}, fn {num, index}, reduce_map ->
      Map.put(reduce_map, num, index)
    end)
  end

  def find_in_map(maps, nums, target) do
    nums
    |> Enum.with_index()
    |> Enum.find_value(fn {n, index} ->
      compliment = target - n

      with {result, result_num} <- Map.fetch(maps, compliment) do
        if result == :ok and result_num != index do
          [index, result_num]
        end
      else
        :error ->
          nil
      end
    end)
  end
end

# nums = [2, 5, 5, 11]
# target = 10

# TwoSum.run(nums, target) |> IO.inspect()

# test_map = %{2 => 0, 7 => 1, 11 => 2, 15 => 3}
# Map.fetch(test_map, 15) |> IO.inspect()

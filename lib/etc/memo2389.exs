IO.inspect(Float.round(1.2))
IO.inspect(round(1.2))
IO.inspect(trunc(5.6))
IO.inspect(Integer.digits(58127))
Integer.parse("2A", 16) |> IO.inspect()
Integer.parse("5 years") |> IO.inspect()
Integer.parse("1.2") |> IO.inspect()
Float.parse("34.5") |> IO.inspect()
({:a, 1, "hi"} == {:a, 1, "hi"}) |> IO.inspect()

not_kw_list = [{"foo", "bar"}]
IO.inspect(not_kw_list["foo"])
fn -> not_kw_list["foo"] end

new_set = MapSet.new([1, 1, 2, 3, 3, 3])
MapSet.size(new_set) |> IO.inspect()
new_set |> IO.inspect()

2..34 |> Enum.reduce(%{}, fn(x, acc) -> Map.put(acc,x,x) end ) |> IO.inspect()
2..34 |> Enum.reduce(%{}, fn(x, acc) -> Map.put(acc,x,x) end ) |> IO.inspect()

set = MapSet.new([1, 2, 3, 4, 5])
intersection_set = MapSet.intersection(set, MapSet.new([5, 6, 7]))
IO.inspect(intersection_set)

set = MapSet.new([1, 2, 3, 4, 5])
new_set = MapSet.union(set, MapSet.new([1, 5, 6, 7]))
IO.inspect(new_set)




defmodule Plane do
  defstruct passengers: 0, maker: :boeing
end

defmodule Airline do
  defstruct plane: %Plane{}, name: "Southwest"
end

defmodule Foo do
  airline = %Airline{}
  put_in(airline.plane.maker, :airbus) |> IO.inspect()
end

tango = %{
  "단맛": 0.38
  "쓴맛": 0.74
  "바디감": 1.1
}

1..100
|> List.to_list
|> IO.inspect()

IO.inspect(~w(Hello world))

assert_raise
[a, b] = [1, 2, 3]
IO.inspect(a)
IO.inspect(b)

dog = %{type: "dog", name: "Rex"}

result =
  case Map.fetch(dog, :type) do
    {:ok, value} -> value
    :error -> "not present"
  end |> IO.inspect()

defmodule Animal do
  defstruct [:kind, :name]
end

defmodule Foo do
  %Animal{name: name} = %Animal{kind: "dog", name: "Max"}
  IO.inspect(name)
end

defmodule Foo do
  def less_than_five?(n), do: n < 5
  def perform, do: Enum.all?([1, 2, 3], &less_than_five?/1) |> IO.inspect()
end
Foo.perform

Enum.all?([1,2,3], less_than_five?)

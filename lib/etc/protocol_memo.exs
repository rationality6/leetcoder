defprotocol(Artist, do: def(perform(artist)))

defimpl Artist, for: Any do
  def perform(_) do
    "Artist showed performance"
  end
end

defmodule Painter do
  @derive Artist
  defstruct name: ""
end

defmodule(Musician, do: defstruct(name: "", instrument: ""))
defmodule(Dancer, do: defstruct(name: "", dance_style: ""))
defmodule(Physicist, do: defstruct(name: ""))

defimpl Artist, for: Musician do
  def perform(musician) do
    "#{musician.name} played #{musician.instrument}"
  end
end

defimpl Artist, for: Dancer do
  def perform(dancer), do: "#{dancer.name} performed #{dancer.dance_style}"
end

defmodule Foo do
  def perform do
    Artist.perform(%Physicist{name: "Delia"}) |> IO.inspect()
  end
end

Foo.perform()

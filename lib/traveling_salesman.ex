defmodule TravelingSalesman do
  alias TravelingSalesman.Modules.{Graph, Vertex}

  @spec find_route :: :ok
  def find_route do
    graph = Graph.build()

    {:ok, map} = graph

    Enum.each(map, &show_adjacent(&1))
  end

  defp show_adjacent(%Vertex{} = city) do
    IO.inspect(%{city: city.label, adjacent: filter_adjacent_label(city.adjacent)})
  end

  defp filter_adjacent_label(city_adjacent) do
    Enum.map(city_adjacent, fn city -> {city.vertex.label, city.cost} end)
  end
end

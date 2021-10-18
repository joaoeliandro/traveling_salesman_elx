defmodule TravelingSalesman do
  alias TravelingSalesman.Modules.{Graph, SortVector}

  # @spec find_route :: {:ok, list}
  def find_route do
    graph = Graph.build()

    {:ok, map} = graph

    # Enum.each(map, &show_adjacent(&1))

    sort_vector = SortVector.build(15)

    result =
      map
      |> Enum.map(&SortVector.insert_vertex(sort_vector, &1))

    # SortVector.print(result)

    Enum.map(result, fn elem -> elem.label end)
    # List.first(result)

    # {:ok, result}
  end

  # defp show_adjacent(%Vertex{} = city) do
  #   IO.inspect(%{city: city.label, adjacent: filter_adjacent_label(city.adjacent)})
  # end

  # defp filter_adjacent_label(city_adjacent) do
  #   Enum.map(city_adjacent, fn city -> {city.vertex.label, city.distance} end)
  # end
end

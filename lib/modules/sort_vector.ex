defmodule TravelingSalesman.Modules.SortVector do
  alias TravelingSalesman.Modules.Vertex

  @keys [:capacity, :final_position, :list_vertex]

  defstruct @keys

  @spec build(integer) :: %TravelingSalesman.Modules.SortVector{
          capacity: integer,
          final_position: integer,
          list_vertex: list(Vertex)
        }
  def build(capacity) do
    %__MODULE__{
      capacity: capacity,
      final_position: -1,
      list_vertex: []
    }
  end

  def insert_vertex(%Vertex{} = vertex, %__MODULE__{} = sort_vertex)
      when sort_vertex.final_position != sort_vertex.capacity - 1 do
    sorted_vertex =
      Enum.sort(sort_vertex.list_vertex, fn current, next ->
        current.distance_city < next.distance_city
      end)

    position = linear_find(sorted_vertex, vertex)

    inserted_vertex = %__MODULE__{
      sort_vertex
      | list_vertex: List.insert_at(sorted_vertex, position, vertex)
    }

    new_sort_vertex = %__MODULE__{
      inserted_vertex
      | final_position: Enum.count(inserted_vertex.list_vertex)
    }

    new_sort_vertex
  end

  def insert_vertex(_vertex, sorted_vertex), do: sorted_vertex

  defp linear_find(vector, vertex) do
    index =
      vector
      |> Enum.find_index(fn elem ->
        elem.distance_city > vertex.distance_city || elem == nil
      end)

    case index do
      nil -> -1
      _ -> index
    end
  end

  def print(module_sort_vector) do
    cond do
      module_sort_vector.final_position == -1 -> nil
      module_sort_vector.final_position > -1 -> print_vector(module_sort_vector)
    end
  end

  defp print_vector(module_sort_vector) do
    list_vertex = module_sort_vector.list_vertex

    Enum.each(list_vertex, fn vertex ->
      IO.inspect("#{vertex.label} - #{vertex.distance_city}")
    end)
  end
end

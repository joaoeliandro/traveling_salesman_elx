defmodule TravelingSalesman.Modules.Vertex do
  @keys [:label, :visited, :distance_city, :adjacent]

  defstruct @keys

  @spec build(bitstring, integer) ::
          %__MODULE__{
            adjacent: list | nil,
            distance_city: integer,
            label: bitstring,
            visited: boolean | nil
          }
  def build(label, distance_city) do
    %__MODULE__{
      label: label,
      visited: false,
      distance_city: distance_city,
      adjacent: []
    }
  end
end

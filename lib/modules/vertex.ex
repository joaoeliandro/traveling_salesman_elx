defmodule TravelingSalesman.Modules.Vertex do
  @keys [:label, :visited, :distance_object, :adjacent]

  defstruct @keys

  @spec build(bitstring, integer) ::
          %__MODULE__{
            adjacent: list | nil,
            distance_object: integer,
            label: bitstring,
            visited: boolean | nil
          }
  def build(label, distance_object) do
    %__MODULE__{
      label: label,
      visited: false,
      distance_object: distance_object,
      adjacent: []
    }
  end
end

defmodule TravelingSalesman.Modules.Adjacent do
  alias TravelingSalesman.Modules.Vertex

  @keys [:vertex, :distance]

  defstruct @keys

  def build(%Vertex{} = vertex, distance) do
    %__MODULE__{
      vertex: vertex,
      distance: distance
    }
  end
end

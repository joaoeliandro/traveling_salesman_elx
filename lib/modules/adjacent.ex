defmodule TravelingSalesman.Modules.Adjacent do
  alias TravelingSalesman.Modules.Vertex

  @keys [:vertex, :cost]

  defstruct @keys

  def build(%Vertex{} = vertex, cost) do
    %__MODULE__{
      vertex: vertex,
      cost: cost
    }
  end
end

defmodule TravelingSalesman.Modules.Graph do
  alias TravelingSalesman.Modules.{Adjacent, Vertex}

  def build do
    arad = Vertex.build("Arad", 366)
    zerind = Vertex.build("Zerind", 374)
    oradea = Vertex.build("Oradea", 380)
    sibiu = Vertex.build("Sibiu", 253)
    timisoara = Vertex.build("Timisoara", 329)
    lugoj = Vertex.build("Lugoj", 244)
    mehadia = Vertex.build("Mehadia", 241)
    dobreta = Vertex.build("Dobreta", 242)
    craiova = Vertex.build("Craiova", 160)
    rimnicu = Vertex.build("Rimnicu", 193)
    fagaras = Vertex.build("Fagaras", 178)
    pitest = Vertex.build("Pitest", 90)
    bucharest = Vertex.build("Bucharest", 0)
    giurgiu = Vertex.build("Giurgiu", 77)

    arad = %Vertex{arad | adjacent: List.insert_at(arad.adjacent, 0, Adjacent.build(zerind, 75))}
    arad = %Vertex{arad | adjacent: List.insert_at(arad.adjacent, 1, Adjacent.build(sibiu, 140))}

    arad = %Vertex{
      arad
      | adjacent: List.insert_at(arad.adjacent, 2, Adjacent.build(timisoara, 118))
    }

    zerind = %Vertex{
      zerind
      | adjacent: List.insert_at(zerind.adjacent, 0, Adjacent.build(arad, 75))
    }

    zerind = %Vertex{
      zerind
      | adjacent: List.insert_at(zerind.adjacent, 1, Adjacent.build(oradea, 71))
    }

    oradea = %Vertex{
      oradea
      | adjacent: List.insert_at(oradea.adjacent, 0, Adjacent.build(zerind, 71))
    }

    oradea = %Vertex{
      oradea
      | adjacent: List.insert_at(oradea.adjacent, 1, Adjacent.build(sibiu, 151))
    }

    sibiu = %Vertex{
      sibiu
      | adjacent: List.insert_at(sibiu.adjacent, 0, Adjacent.build(oradea, 151))
    }

    sibiu = %Vertex{
      sibiu
      | adjacent: List.insert_at(sibiu.adjacent, 1, Adjacent.build(arad, 140))
    }

    sibiu = %Vertex{
      sibiu
      | adjacent: List.insert_at(sibiu.adjacent, 2, Adjacent.build(fagaras, 99))
    }

    sibiu = %Vertex{
      sibiu
      | adjacent: List.insert_at(sibiu.adjacent, 3, Adjacent.build(rimnicu, 80))
    }

    timisoara = %Vertex{
      timisoara
      | adjacent: List.insert_at(timisoara.adjacent, 0, Adjacent.build(arad, 118))
    }

    timisoara = %Vertex{
      timisoara
      | adjacent: List.insert_at(timisoara.adjacent, 1, Adjacent.build(lugoj, 111))
    }

    lugoj = %Vertex{
      lugoj
      | adjacent: List.insert_at(lugoj.adjacent, 0, Adjacent.build(timisoara, 111))
    }

    lugoj = %Vertex{
      lugoj
      | adjacent: List.insert_at(lugoj.adjacent, 1, Adjacent.build(mehadia, 70))
    }

    mehadia = %Vertex{
      mehadia
      | adjacent: List.insert_at(mehadia.adjacent, 0, Adjacent.build(lugoj, 70))
    }

    mehadia = %Vertex{
      mehadia
      | adjacent: List.insert_at(mehadia.adjacent, 1, Adjacent.build(dobreta, 75))
    }

    dobreta = %Vertex{
      dobreta
      | adjacent: List.insert_at(dobreta.adjacent, 0, Adjacent.build(mehadia, 75))
    }

    dobreta = %Vertex{
      dobreta
      | adjacent: List.insert_at(dobreta.adjacent, 1, Adjacent.build(craiova, 120))
    }

    craiova = %Vertex{
      craiova
      | adjacent: List.insert_at(craiova.adjacent, 0, Adjacent.build(dobreta, 120))
    }

    craiova = %Vertex{
      craiova
      | adjacent: List.insert_at(craiova.adjacent, 1, Adjacent.build(pitest, 138))
    }

    craiova = %Vertex{
      craiova
      | adjacent: List.insert_at(craiova.adjacent, 2, Adjacent.build(rimnicu, 146))
    }

    fagaras = %Vertex{
      fagaras
      | adjacent: List.insert_at(fagaras.adjacent, 0, Adjacent.build(sibiu, 99))
    }

    fagaras = %Vertex{
      fagaras
      | adjacent: List.insert_at(fagaras.adjacent, 1, Adjacent.build(bucharest, 211))
    }

    bucharest = %Vertex{
      bucharest
      | adjacent: List.insert_at(bucharest.adjacent, 0, Adjacent.build(giurgiu, 90))
    }

    bucharest = %Vertex{
      bucharest
      | adjacent: List.insert_at(bucharest.adjacent, 1, Adjacent.build(fagaras, 211))
    }

    bucharest = %Vertex{
      bucharest
      | adjacent: List.insert_at(bucharest.adjacent, 2, Adjacent.build(pitest, 101))
    }

    giurgiu = %Vertex{
      giurgiu
      | adjacent: List.insert_at(giurgiu.adjacent, 0, Adjacent.build(bucharest, 90))
    }

    {:ok,
     [
       arad,
       zerind,
       oradea,
       sibiu,
       timisoara,
       lugoj,
       mehadia,
       dobreta,
       craiova,
       rimnicu,
       fagaras,
       pitest,
       bucharest,
       giurgiu
     ]}
  end
end

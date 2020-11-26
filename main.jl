# Pkg.add("ZipFile")
# Pkg.add("JSON")

include("domain.jl")

function randVertex()::Integer
    return rand(1)[1]*10|>round|>Integer
end

vertices = map(x -> Vertex(x), [1:30;])
edges = map(x -> Edge(x, randVertex(), randVertex()), [1:10;])
graph = MultiGraph(vertices, edges)

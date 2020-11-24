struct Vertex
    id::Integer
end

struct Edge
    id::Integer
    node_a::Integer
    node_b::Integer
end

struct MultiGraph
    vertices::Array{Vertex}
    edges::Array{Edge}
end

function randVertex()::Integer
    return rand(1)[1]*10|>round|>Integer
end

vertices = map(x -> Vertex(x), [1:30;])
edges = map(x -> Edge(x, randVertex(), randVertex()), [1:10;])
graph = MultiGraph(vertices, edges)

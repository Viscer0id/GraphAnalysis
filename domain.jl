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

# Pkg.add("ZipFile")
# Pkg.add("JSON")

include("domain.jl")
include("loader.jl")

graph = load_graph("/home/jeremy/Codes/GraphAnalysis/sampleGraph.json")

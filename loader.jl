using JSON
include("domain.jl")

# JSON.print(stdout, Dict("julia" => "0.5"), 4)
# people = [Dict("name"=>"CoolGuy", "company"=>"tech") for i=1:10]
# companies = [Dict("name"=>"CoolTech", "address"=>"Bay Area") for i=1:5]
# data = Dict("people"=>people, "companies"=>companies)
# json_string = JSON.json(data)
# print(stdout, json_string)

function load_data(filename::String)::Dict
    file_handle = open(filename, "r")
    contents = read(file_handle, String)
    close(file_handle)
    return JSON.parse(contents)
end

function load_graph(inputDict::Dict)::MultiGraph
    graph_d = get(inputDict, "graph", nothing)
    vertices_d = get(graph_d, "vertices", nothing)
    edges_d = get(graph_d, "edges", nothing)

    vertices = map(dict->Vertex(get(dict,"id",nothing)),vertices_d)
    edges = map(dict->Edge(get(dict,"id",nothing), get(dict,"node_a", nothing), get(dict, "node_b", nothing)), edges_d)

    return MultiGraph(vertices, edges)
end

function load_graph(filename::String)::MultiGraph
    return load_data(filename)|>load_graph
end

# g = load_data("/home/jeremy/Codes/GraphAnalysis/sampleGraph.json")
# to_graph(g)
# print(g)
# JSON.print(stdout, g, 4)

# zarchive = ZipFile.Reader("myarchive.zip")
#
# for f in zarchive.files
#     println(f.name)
#     fullFilePath = joinpath(rootDir,dataFolder,f.name)
#     if endswith(f.name,"/")
#         mkdir(fullFilePath)
#     else
#         out =  open(fullFilePath,"w")
#         write(out,read(f,String))
#         close(out)
#     end
# end
#
# close(zarchive)

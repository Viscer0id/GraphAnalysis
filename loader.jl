using JSON

JSON.print(stdout, Dict("julia" => "0.5"), 4)

people = [Dict("name"=>"CoolGuy", "company"=>"tech") for i=1:10]
companies = [Dict("name"=>"CoolTech", "address"=>"Bay Area") for i=1:5]

data = Dict("people"=>people, "companies"=>companies)
json_string = JSON.json(data)

print(stdout, json_string)
# JSON.print(stdout, json_string, 4)

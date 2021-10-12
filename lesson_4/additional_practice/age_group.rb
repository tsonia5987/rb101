munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, data_hash|
  age = data_hash["age"]
  age_group = case age
              when 0..17  then "kid"
              when 18..65 then "adult"
              else             "senior"
              end
  
  data_hash["age_group"] = age_group
end

p munsters


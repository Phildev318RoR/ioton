json.array!(@rule_types) do |rule_type|
  json.extract! rule_type, :id, :name, :description, :symbol, :downloaded
  json.url rule_type_url(rule_type, format: :json)
end

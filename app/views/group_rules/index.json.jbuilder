json.array!(@group_rules) do |group_rule|
  json.extract! group_rule, :id, :name, :description, :client_id, :rule_type_id, :rule_value, :downloaded
  json.url group_rule_url(group_rule, format: :json)
end

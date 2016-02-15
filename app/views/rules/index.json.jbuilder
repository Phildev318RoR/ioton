json.array!(@rules) do |rule|
  json.extract! rule, :id, :name, :description, :node_message_parrameter_id, :rule_type_id, :rule_value, :downloaded
  json.url rule_url(rule, format: :json)
end

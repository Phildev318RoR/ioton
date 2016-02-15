json.array!(@group_rule_details) do |group_rule_detail|
  json.extract! group_rule_detail, :id, :group_rule_id, :rule_id, :downloaded
  json.url group_rule_detail_url(group_rule_detail, format: :json)
end

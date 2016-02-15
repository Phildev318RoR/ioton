json.array!(@node_message_parrameters) do |node_message_parrameter|
  json.extract! node_message_parrameter, :id, :name, :node_message_id, :value_type_id, :value_length, :value_index, :downloaded
  json.url node_message_parrameter_url(node_message_parrameter, format: :json)
end

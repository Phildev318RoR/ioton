json.array!(@node_message_types) do |node_message_type|
  json.extract! node_message_type, :id, :name, :description, :downloaded
  json.url node_message_type_url(node_message_type, format: :json)
end

json.array!(@node_messages) do |node_message|
  json.extract! node_message, :id, :name, :node_type_id, :node_message_type_id, :downloaded
  json.url node_message_url(node_message, format: :json)
end

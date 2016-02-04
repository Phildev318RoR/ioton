json.array!(@node_types) do |node_type|
  json.extract! node_type, :id, :name, :description, :downloaded
  json.url node_type_url(node_type, format: :json)
end

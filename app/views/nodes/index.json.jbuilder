json.array!(@nodes) do |node|
  json.extract! node, :id, :name, :node_type_id, :iotonserver_id, :downloaded
  json.url node_url(node, format: :json)
end

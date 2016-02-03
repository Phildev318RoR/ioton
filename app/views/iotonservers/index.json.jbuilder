json.array!(@iotonservers) do |iotonserver|
  json.extract! iotonserver, :id, :name, :description, :site_id, :downloaded
  json.url iotonserver_url(iotonserver, format: :json)
end

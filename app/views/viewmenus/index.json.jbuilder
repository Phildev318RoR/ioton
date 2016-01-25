json.array!(@viewmenus) do |viewmenu|
  json.extract! viewmenu, :id, :name, :description
  json.url viewmenu_url(viewmenu, format: :json)
end

json.array!(@permissionviews) do |permissionview|
  json.extract! permissionview, :id, :permission_id, :viewmenu_id
  json.url permissionview_url(permissionview, format: :json)
end

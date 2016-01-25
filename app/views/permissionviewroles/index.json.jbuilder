json.array!(@permissionviewroles) do |permissionviewrole|
  json.extract! permissionviewrole, :id, :permissionview_id, :role_id
  json.url permissionviewrole_url(permissionviewrole, format: :json)
end

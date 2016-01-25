json.array!(@userroles) do |userrole|
  json.extract! userrole, :id, :user_id, :role_id
  json.url userrole_url(userrole, format: :json)
end

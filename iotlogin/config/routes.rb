Iotlogin::Engine.routes.draw do
  resources :permissionviews
  resources :permissions
  resources :viewmenus
  resources :permissionviewroles
  resources :userroles
  resources :roles
end

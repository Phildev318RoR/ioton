Rails.application.routes.draw do
  resources :group_rules
  resources :group_rule_details
  resources :rules
  resources :rule_types
  resources :node_messages
  resources :node_message_parrameters
  resources :value_types
  resources :node_message_types
  resources :node_types
  resources :nodes
  resources :iotonservers
  resources :userroles
  resources :permissionviewroles
  resources :permissionviews
  resources :permissions
  resources :viewmenus
  resources :roles
  get 'countries/new'

  get 'staticpages/mychart'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
  root 'pages#home'

  get 'pages/home', to: 'pages#home'
  get 'pages/about', to: 'pages#about'
  get 'pages/client_home', to: 'pages#client_home'

  resources :clients
  resources :departments
  resources :sites
  namespace :api, :defaults => {:format => 'json'} do
    resources :people
  end
  get 'signup', to: 'users#new'
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  resources :countries, only: [:new, :create]
  get '/countries/new', to: 'countries#new'
  get '/staticpages/mychart',   to: 'staticpages#mychart'
  get '/staticpages/statchart',   to: 'staticpages#statchart'
end

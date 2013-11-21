FoodForager2::Application.routes.draw do
  # Routes for the Food_detail resource:
  # CREATE
  get '/food_details/new', controller: 'food_details', action: 'new', as: 'new_food_detail'
  post '/food_details', controller: 'food_details', action: 'create', as: 'food_details'

  # READ
  get '/food_details', controller: 'food_details', action: 'index'
  get '/food_details/:id', controller: 'food_details', action: 'show', as: 'food_detail'

  # UPDATE
  get '/food_details/:id/edit', controller: 'food_details', action: 'edit', as: 'edit_food_detail'
  patch '/food_details/:id', controller: 'food_details', action: 'update'

  # DELETE
  delete '/food_details/:id', controller: 'food_details', action: 'destroy'
  #------------------------------

  # Routes for the Dietary_restriction resource:
  # CREATE
  get '/dietary_restrictions/new', controller: 'dietary_restrictions', action: 'new', as: 'new_dietary_restriction'
  post '/dietary_restrictions', controller: 'dietary_restrictions', action: 'create', as: 'dietary_restrictions'

  # READ
  get '/dietary_restrictions', controller: 'dietary_restrictions', action: 'index'
  get '/dietary_restrictions/:id', controller: 'dietary_restrictions', action: 'show', as: 'dietary_restriction'

  # UPDATE
  get '/dietary_restrictions/:id/edit', controller: 'dietary_restrictions', action: 'edit', as: 'edit_dietary_restriction'
  patch '/dietary_restrictions/:id', controller: 'dietary_restrictions', action: 'update'

  # DELETE
  delete '/dietary_restrictions/:id', controller: 'dietary_restrictions', action: 'destroy'
  #------------------------------

  # Routes for the Event resource:
  # CREATE
  get '/events/new', controller: 'events', action: 'new', as: 'new_event'
  post '/events', controller: 'events', action: 'create', as: 'events'

  # READ
  get '/events', controller: 'events', action: 'index'
  get '/events/:id', controller: 'events', action: 'show', as: 'event'

  # UPDATE
  get '/events/:id/edit', controller: 'events', action: 'edit', as: 'edit_event'
  patch '/events/:id', controller: 'events', action: 'update'

  # DELETE
  delete '/events/:id', controller: 'events', action: 'destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/users/new', controller: 'users', action: 'new', as: 'new_user'
  post '/users', controller: 'users', action: 'create', as: 'users'

  # READ
  get '/users', controller: 'users', action: 'index'
  get '/users/:id', controller: 'users', action: 'show', as: 'user'

  # UPDATE
  get '/users/:id/edit', controller: 'users', action: 'edit', as: 'edit_user'
  patch '/users/:id', controller: 'users', action: 'update'

  # DELETE
  delete '/users/:id', controller: 'users', action: 'destroy'
  #------------------------------

  root "events#index"

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
end

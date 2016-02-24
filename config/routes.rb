Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

get '/' => "agencies#index"
resources :agencies
resources :reviews
resources :users

get '/logout' => 'sessions#destroy', as: :logout
resources :sessions, only: [:new, :create]

  # get 'reviews/index'
  #
  # get 'reviews/show'
  #
  # get 'reviews/new'
  #
  # post '/reviews' => 'reviews#create'
  #
  # get 'reviews/edit'
  #
  # get 'reviews/update'
  #
  # get 'reviews/destroy'
  #
  # get 'agencies/index'
  #
  # get 'agencies/show'
  #
  # get 'agencies/new'
  #
  # get 'agencies/create'
  #
  # get 'agencies/edit'
  #
  # get 'agencies/update'
  #
  # get 'agencies/destroy'
  #
  #   root 'users#index'
  #
  # get '/users' => 'users#index'
  #
  # get 'users/show'
  #
  # get 'users/new'
  #
  # get 'users/create'
  #
  # get 'users/edit'
  #
  # get 'users/update'
  #
  # get 'users/destroy'

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

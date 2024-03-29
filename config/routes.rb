Bali::Application.routes.draw do
  devise_for :users, :controllers => { :registrations => "registrations" }
  resources :blog_entries, path: 'blog'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".
  get 'how-it-works' => 'pages#how-it-works', as: :how_it_works_page
  get 'pricing' => 'pages#pricing', as: :pricing_page
  get 'about' => 'pages#about', as: :about_page
  get 'blog_item' => 'pages#blog_item', as: :blog_item_page
  get 'checkout/start' => 'checkout#start', as: :checkout_start
  get 'checkout/summary' => 'checkout#summary', as: :checkout_summary
  get 'checkout/create' => 'checkout#create', as: :checkout_create
  get 'checkout/confirmation' => 'checkout#confirmation', as: :checkout_confirmation

  # You can have the root of your site routed with "root"
  root 'pages#home'

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

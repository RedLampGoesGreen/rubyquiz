Rails.application.routes.draw do
  get 'games/win'

  get 'games/loose'

  get 'games/startgame'

  resources :games
  resources :questions
  get 'games/win'
  #make it button usable
  post 'games/win'

  get 'games/loose'
  #make it button usable
  post 'games/loose'

  get 'games/startgame'

  resources :games
  get 'game/game'

  get 'game/index'

  get 'game/game'

  get 'games/start'

  get 'games/ask_question'

  get 'games/right_answer'

  get 'games/wrong_answer'

  get 'game/index'

  resources :questions
  resources :answers
  resources :players
  get 'home/index'

  devise_for :users
  devise_for :installs
  resources :answers
  resources :questions
  resources :players
  resources :levels
  resources :categories
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

  #routing for the starting page
  root :controller => 'home', :action => :index
end

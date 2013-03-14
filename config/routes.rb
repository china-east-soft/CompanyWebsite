Chinaeast::Application.routes.draw do
  match 'servicesupport', :to => 'pages#servicesupport'
  match 'download', :to => 'pages#download'
  match 'customerservice', :to => 'pages#customerservice'
  match 'products', :to => 'pages#products'
  match 'cssa', :to => 'pages#cssa'
  match 'csst', :to => 'pages#csst'
  match 'programfeatures', :to => 'pages#programfeatures'
  match 'overallprogram', :to => 'pages#overallprogram'
  match 'fastcat', :to => 'pages#fastcat'
  match 'scheme', :to => 'pages#scheme'
  match 'about', :to => 'pages#about'
  match 'recruit', :to => 'pages#recruit'
  match 'team', :to => 'pages#team'
  match 'contact', :to => 'pages#contact'
  match 'faq', :to => 'pages#faq'
  match 'news', :to => 'pages#news'
  resources :recruits do
    get 'c', :on => :collection
    get 'ios', :on => :collection
    get 'test', :on => :collection
    get 'net', :on => :collection
    get 'windows', :on => :collection
    get 'android', :on => :collection
    get 'ruby', :on => :collection
  end
  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => "pages#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end

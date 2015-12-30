Slovencina::Application.routes.draw do
  get "static_pages/home"

  get "static_pages/about"

  devise_for :users, :path_names => { :sign_in => 'login', :sign_out => 'logout', :password => 'secret', :confirmation => 'verification', :unlock => 'unblock', :registration => 'register', :sign_up => 'cmon_let_me_in' }



  resources :graphs
  resources :attempts
  resources :categories

  resources :words do  
    resource :statistic
  end
  resources :statistics
  
  match '/:controller(/:action(/:id))'

  #root :to => 'statistics#index'
  root :to => 'static_pages#home'
end
Rails.application.routes.draw do
  devise_for :users, :path_prefix => 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "sites#index"

  resources :sites do
    resources :jobs
    member do
      post "clock_in"
      put "clock_out"
    end
  end

  resources :users

end

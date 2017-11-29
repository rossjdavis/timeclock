Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "sites#index"

  resources :sites do
    resources :rates
  end

  resources :sites, only: [:index, :show] do
    member do
      post "clock_in"
      put "clock_out"
    end
  end
end

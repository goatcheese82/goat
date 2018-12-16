Rails.application.routes.draw do
  root 'application#index'
  resources :weeks do
    resources :days do 
      resources :notes
    end
  end

  resources :days
  resources :notes
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people do
    resources :compliments, only: "create"
  end

  root "people#index"

end

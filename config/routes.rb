Rails.application.routes.draw do
  devise_for :people, controllers: { omniauth_callbacks: 'people/omniauth_callbacks' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :people do
    resources :compliments, only: "create"
  end

  root "people#index"

end

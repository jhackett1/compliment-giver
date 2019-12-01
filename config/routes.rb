Rails.application.routes.draw do

  devise_scope :person do
    delete "/sign_out", to: "devise/sessions#destroy", as: :destroy_person_session
  end

  devise_for :people, controllers: { omniauth_callbacks: 'people/omniauth_callbacks' }

  resources :people, only: "index" do
    resources :compliments, only: "create"
  end

  get "/me", to: "people#me"

  root "people#index"

end

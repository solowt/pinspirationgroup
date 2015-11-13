Rails.application.routes.draw do
  devise_for :user
  root :to => "boards#index"
  resources :tags
  resources :boards do
    resources :pins do
      resources :tagpins
    end
  end
end

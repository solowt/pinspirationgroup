Rails.application.routes.draw do
  devise_for :user
  root :to => "boards#index"
  devise_for :user
  resources :boards do
    resources :pins
  end
end

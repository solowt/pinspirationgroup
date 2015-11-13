Rails.application.routes.draw do
  root :to => "boards#index"
  devise_for :user
  resources :boards do
    resources :pins
  end
end

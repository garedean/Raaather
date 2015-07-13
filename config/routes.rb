Rails.application.routes.draw do
  devise_for :users
  root "rathers#index"

  resources :rathers do
    resources :comments
  end
end

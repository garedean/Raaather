Rails.application.routes.draw do
  root "rathers#index"

  resources :rathers
end

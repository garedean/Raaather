Rails.application.routes.draw do
  root "rathers#index"

  resources :rathers do
    resources :choices
  end

end

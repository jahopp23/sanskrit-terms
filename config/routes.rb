Rails.application.routes.draw do
  resources :sanskrit_terms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sanskrit_terms#index'
end

Rails.application.routes.draw do
  resources :users do
    resources :tasks, only: [:show]
  end
  resources :projects  do
    
    resources :tasks 
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

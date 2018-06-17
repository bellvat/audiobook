Rails.application.routes.draw do
  get 'audiobooks/listen'
  resources :audiobooks

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

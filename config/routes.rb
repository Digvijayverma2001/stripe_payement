Rails.application.routes.draw do
  devise_for :users, controllers:{ passwords: 'users/passwords',registrations: 'users/registrations',confirmations: 'users/confirmations',sessions: 'users/sessions' }
  get '/orders/index', to: 'orders#index'
  post '/', to: 'orders#submit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

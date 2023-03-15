Rails.application.routes.draw do
  devise_for :users, controllers:{ passwords: 'users/passwords',registrations: 'users/registrations',confirmations: 'users/confirmations',sessions: 'users/sessions' }
  get '/', to: 'orders#index'
  post '/orders/submit', to: 'orders#submit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

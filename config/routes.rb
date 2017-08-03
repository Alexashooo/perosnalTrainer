Rails.application.routes.draw do

  resources :messages

  get  'recipients/index'


  devise_for :users

  root to: 'landing#index'
end

Rails.application.routes.draw do
  get 'messages/index'

  get 'messages/show'

  get 'messages/new'

  get 'messages/create'

  get 'messages/destroy'

  get 'landing/index'

  devise_for :users

  root to: 'landing#index'
end

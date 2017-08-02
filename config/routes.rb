Rails.application.routes.draw do
  #devise_for :users, controllers: {sessions: 'user/sessions', registrations: 'users/registrations'}
  devise_for :users
end

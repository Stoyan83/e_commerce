Rails.application.routes.draw do
  root 'homepage#index'

  match '/*path', to: 'homepage#index', via: :all
end

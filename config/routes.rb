Rails.application.routes.draw do
  namespace :api do
    get '/speakers' => 'speakers#index'
    get '/speakers' => 'speakers#show'
  end
end
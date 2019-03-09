Rails.application.routes.draw do
  namespace :api do
    get '/speakers' => 'speakers#index'
  end
end
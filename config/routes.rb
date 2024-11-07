Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  
  # Add this line to ensure users are authenticated for all pages except home
  authenticate :user do
    resources :aircraft
  end
end

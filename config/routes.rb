# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  root 'home#index'

  authenticate :user do
    resources :aircraft
  end
end

# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  root to: redirect('/mobile/concerts', status: 302)
  namespace :mobile do
    resources :concerts
  end

  resource :user, only: [:update] do
    get :profile
  end
end

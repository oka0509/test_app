# frozen_string_literal: true

Rails.application.routes.draw do
  root 'diaries#index'

  resources :users
  resources :tags, only: [:index, :show]
end

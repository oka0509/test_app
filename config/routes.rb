# frozen_string_literal: true

Rails.application.routes.draw do
  root 'diaries#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :diaries
  resources :users
  resources :tags, only: [:index, :show]
end

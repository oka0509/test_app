# frozen_string_literal: true

Rails.application.routes.draw do
  root 'diaries#index'

  resources :sessions, only: [:new, :create, :destroy]
  resources :diaries, only: [:index, :show, :create]
  resources :users
  resources :tags, only: [:index, :show]
end

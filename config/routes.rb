# frozen_string_literal: true

Rails.application.routes.draw do
  resources :repository, only: %i[new index]
end

# typed: strict
Rails.application.routes.draw do
  root 'home#index'
  get 'blog', to: 'home#blog', as: 'blog'
  get 'portofolio', to: 'home#portofolio', as: 'portofolio'
  get 'listen', to: 'home#spotify', as: 'spotify'
end

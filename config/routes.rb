Rails.application.routes.draw do
  root to: 'home#index'

  post 'generate_word', to: 'home#generate_word'
end

Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'index', to: 'welcome#index', as: 'index'
  get 'about', to: 'welcome#about', as: 'about'
  get 'shop', to: 'welcome#shop', as: 'shop'
  get 'contact', to: 'welcome#contact', as: 'contact'


  resources :posts
  resources :students
  get '/students_index', to: 'students#index', as: 'students_index'
  get '/posts_index', to: 'posts#index', as: 'posts_index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

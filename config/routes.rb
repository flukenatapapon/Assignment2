Rails.application.routes.draw do
  
  root 'welcome#index'

  get 'index', to: 'welcome#index', as: 'index'
  get 'about', to: 'welcome#about', as: 'about'
  get 'shop', to: 'welcome#shop', as: 'shop'
  get 'contact', to: 'welcome#contact', as: 'contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

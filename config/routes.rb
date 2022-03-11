Rails.application.routes.draw do
  get 'site/index'
  root :to => "site#index"
  resources :messages,:only => [:create]
  get '/education',to: 'site#education',as: 'education'
  get '/portfolio',to: 'site#portfolio',as: 'portfolio'
  get '/technical',to: 'site#technical',as: 'technical'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

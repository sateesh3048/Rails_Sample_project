Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/stories', to: redirect('/articles')
  resources :clients

  resources :photos, as: "images"
  root 'clients#index'
 # mount Blog::Engine, at: "/blog"
end

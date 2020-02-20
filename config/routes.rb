Rails.application.routes.draw do
  Blogger::Application.routes.draw do
    root to: 'articles#index'
    
    resources :articles do
      resources :comments
    end
  end
  resources :tags
  resources :authors

  get 'login' => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
  post 'login' => 'author_sessions#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

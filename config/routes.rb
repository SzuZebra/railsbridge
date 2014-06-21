Rails.application.routes.draw do
  devise_for :users
  resources :topics do
    member do
      post 'upvote'
      post 'downvote'
    end
  end

  get '/about' => 'topics#about'

  root 'topics#index'
end

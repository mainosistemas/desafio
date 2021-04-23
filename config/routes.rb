Rails.application.routes.draw do
  devise_for :users

  root to: "blogs#index"

  resources :blogs, except: [:destroy], param: :slug do
    resources :posts do
      resources :comments, module: 'posts', only: [:create]
    end
  end
end

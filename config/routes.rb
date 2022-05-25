Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  resources :restaurants, except: [:edit, :update] do
    resources :reviews, only: [:new, :create]
  end
  resources :reviews, only: [:destroy]
end




# The reason we nest the new and create actions for review within restaurants is because we need a restaurant id to create an instance of review. We don’t need the restaurant id to delete a review, so we don’t need to nest the destroy action!

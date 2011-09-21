Youwrite::Application.routes.draw do
  resources :tposts

  resources :posts
  root :to => "posts#index"
end

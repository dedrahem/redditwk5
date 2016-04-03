Rails.application.routes.draw do

  root 'welcome#index'
  # resources :posts
  get 'posts/index' => 'posts/index',as: :posts
  get 'posts/new' => 'posts#new', as: :new_post
  get 'post/:id' => 'posts#show', as: :post
  post 'posts/:id/upvote' => 'posts#upvote', as: :upvote_post
  post 'posts/:id/downvote' => 'posts#downvote', as: :downvote_post
  post 'posts' => 'posts#create', as: :posts_create
  get 'posts/edit'
  get 'posts/update'
  get "posts/:id/edit" => 'posts#edit',as: :edit_post
  delete 'posts/:id' => 'posts#delete'
  post 'posts/:id/comments' => 'posts#create_comment', as: :comments

  get 'session/new' => 'session#new', as: :sign_in
  post 'session/new' => 'session#create'
  delete 'session' => 'session#delete', as: :sign_out

  get 'users/index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  delete 'users/:id' => 'users#delete'

  get 'comments/new' => 'comments#new', as: :new_comment
  get 'comments/create'

end

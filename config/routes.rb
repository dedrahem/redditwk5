Rails.application.routes.draw do

  root 'welcome#index'

  get 'posts/new' => 'posts#new', as: :new_post
  get 'posts/:id' => 'posts#show', as: :post
  post 'posts/:id/upvote' => 'posts#upvote', as: :upvote_post
  post 'posts/:id/downvote' => 'posts#downvote', as: :downvote_post
  post 'posts' => 'posts#create', as: :posts
  get 'posts/edit'
  get 'posts/update'
  delete 'posts/:id' => 'posts#delete'
  post 'posts/:id/comments' => 'posts#create_comment', as: :comments

  get 'users/index'
  get 'users/new' => 'users#new', as: :new_user
  post 'users' => 'users#create'
  delete 'users/:id' => 'users#delete'

  get 'comments/new'
  get 'comments/create'

end

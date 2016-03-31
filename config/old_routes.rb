Rails.application.routes.draw do

  root 'welcome#index'
  get 'posts#index' # display list of posts decending
  get 'posts/new' => 'posts#new', as: :new_post # 2
  get 'posts/:id' => 'posts#show', as: :post   # 5
  # id votes view is via show, post creates new per like vote
  post 'posts/:id/upvote' => 'posts#upvote', as: :upvote_post
  post 'posts/:id/downvote' => 'posts#downvote', as: :downvote_post
  # post is create click posts using post controller create def
  post 'posts' => 'posts#create', as: :posts  # 4
  # get 'posts/:id' => 'posts#edit', as: :post   # 5
  get 'posts/edit'
  # get 'posts/:id' => 'posts#update'  # 11
  get 'posts/update'
  # is post permanent or delete it ?
  delete 'posts/:id' => 'posts#delete'
  post 'posts/:id/comments' => 'posts#create_comment', as: :comments
  # post 'posts/:id/comments' => 'comments#create & redirect('posts/:id')7&8 need repair

  get 'users/index'
  get 'users/new' => 'users#new', as: :new_user
  # get 'users/:id' => 'users#detail', as: :user
  post 'users' => 'users#create'
  delete 'users/:id' => 'users#delete'

  # get 'comment/list'
  # get 'comment/detail'
  get 'comment/create'
  # get 'comment/delete'

end

Rails.application.routes.draw do

  root 'welcome#index'
  get 'posts/new' => 'posts#new', as: :new_post # 2
  get 'posts' => 'posts#index', as: :posts    # 3
  post 'posts' => 'posts#create'    # 4
  get 'posts/:id' => 'posts#show', as: :post   # 5
  get 'posts/:post_id/comments/new' => 'comments#new', as: :new_comment # 6
  post 'posts/:post_id/comments' => 'comments#create'#, to:redirect('posts/:id') # 7 and 8
  patch 'posts/:id' => 'posts#update'  # 11
  #   vote and go to updated home - not a clue what to do here,
end

# not handling the log in and redirect needs
# other problems may be at 7 10 and 11
#
# 2 returns a form for content input of a new post
# 3 display a list of all posts
# 5 click on TITLE go to post and SHOW post by :id indentifier
# 6 does this look right CLICK to add comment get a form to
#      enter content for NEW COMMENT
# 7 and 8 attempt to redirect after click to create comment
#      and redirect return to the post page
# 10 same route as 5 on homepage descending list click on post
#       title and go to SHOW the post
# 11 What is this even doing?  its, Incorrect but how to, update
#      post at VOTE on click at thumbup for like and then go
#      SHOW new count on HOME page.   on the notes at 10
#  12
#
#

class PostsController < ApplicationController

def index
  # @posts = Post.all
  @posts = Post.all.order("likes desc")
end

def show
  @post = Post.find_by id: params[:id]
  @comment = Comment.new
  @comment.post = @post
end

def create_comment
      # get the record
      @post = Post.find_by id: params[:id]
      @comment = Comment.new

      @comment.body = params[:comment][:body]
      @comment.post_id = @post.id
      # save it
      if @comment.save
        redirect_to post_path(id: @post.id)
      else
        render :detail
      end
  end

  def upvote
    @post = Post.find_by id: params[:id]
    @post.update likes: (@post.likes + 1)
    redirect_to root_path
  end

  def downvote
    @post = Post.find_by id: params[:id]
    @post.update likes: (@post.likes - 1)
    redirect_to root_path
  end

def new
  @post = Post.new
end

def create
  #init a blank new Post
  @post=Post.new
  #set the values
  @post.title = params[:post][:title]
  @post.user_id = params[:post][:user_id]
  @post.body = params[:post][:body]
  # SAVE  !
  if @post.save
    # sign in w/ sessions
      session[:user_id] = @user_id # remember who user is
      # redirect
    redirect_to posts_path
  else
    render:new
  end
end

def edit
  @post = Post.find_by id: params[:id]
end

def update
  # instantiant / Find
  @post = Post.find_by id: params[:id]
  # set values
  @post.title = params[:post][:title]
  @post.body = params[:post][:body]
  @post.user_id = params[:post][:user_id]
  # save it
  if @post.save
    # redirect to "/posts"
    redirect_to post_path(id: @post.id)
  else
    render :edit
  end
end

def delete
  @post = Post.find_by id: params[:id]
  @post.destroy
  redirect_to posts_path
  end
end # end class

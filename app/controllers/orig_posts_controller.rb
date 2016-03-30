class PostsController < ApplicationController

  def new
    @post = Post.new
  end
  def index
    # index
  end
    def create
      @post = Post.new
          @post.title = params[:post][:title]
          @post.url = params[:post][:url]
          @post.user_id = params[:post][:user_id]
      @post = Post.new params.require(:post).permit(:title, :body, :user_id)
      if @post.save
        # sign in w/ sessions
          session[:user_id] = @user.id # remember who user is
          redirect_to root_path
          # redirect
        redirect_to root_path, notice: "Thanks for signing up! #secrets"
      else
        render :new
      end  # if
    end # def
end  # class

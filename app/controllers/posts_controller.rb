class PostsController < ApplicationController

  def new
    @post = Post.new
  end

    def create
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

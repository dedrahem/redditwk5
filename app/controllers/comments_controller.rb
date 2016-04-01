class CommentsController < ApplicationController

  def new
    @comments = Comment.new
    @users = User.all
    @posts = Post.all
  end

    def create
      @comment = Comment.new params.require(:comment).permit(:body, :post_id, :user_id)
      if @comment.save
        # sign in w/ sessions
          session[:user_id] = @user.id # remember who user is
          redirect_to root_path
          # redirect
        redirect_to root_path, notice: "Thanks for signing up! #secrets"  # what is secrets
      else
        render :new
      end  # if
    end # end def create

  def index
  end

  def show
  end

end   # class

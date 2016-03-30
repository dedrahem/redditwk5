class UsersController < ApplicationController
  def index
      @users = User.all
      @posts = Post.all
    end

    def show
      @user = User.find_by id: params[:id]
    end

    def new
      @user = User.new
    end

    def create
      # instantiate
      @user = User.new
      # set values
      @user.name = params[:user][:name]
      # @author.last_name = params[:author][:last_name]
      # save
      if @user.save
        redirect_to "/users"
      else
        render :new
      end
      # redirect or render form
    end

    def delete
      @user = User.find_by id: params[:id]
      @user.destroy
      redirect_to users_path
    end
  end

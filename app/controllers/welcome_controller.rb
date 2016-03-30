class WelcomeController < ApplicationController
    def index
      @posts = Post.all
      @post = Post.find_by id: params[:id]
    end
    def show
      @post = Post.find_by id: params[:id]
      @posts = Post.all
    end
    def new
      @post = Post.new
    end
end # end class

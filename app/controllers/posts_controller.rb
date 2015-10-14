class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
    render status: 201, json: @post
  end

  def create
  end

  def update
  end

  def delete
  end

end

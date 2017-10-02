class Api::PostsController < ApplicationController

  before_action do
    request.format = :json
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find params[:id]
    render status: 201, json: @post
  end

  def create
    @post = Post.new params.require(:post).permit(:title)
    if @post.save
      render status: 201, json: @post
    else
      render status: 422, json: @post.errors
    end
  end

  def update
    @post = Post.find params[:id]
    if @post.update params.require(:post).permit(:title)
      render status: 201, json: @post
    else
      render status: 422, json: @post.errors
    end
  end

    def delete
      @post = post.find params[:id]
      @post.destroy
      render status: 201, json: @post
    end

end

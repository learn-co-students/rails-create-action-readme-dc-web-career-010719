class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    get_post
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.create(title: params[:title], description: params[:description])
    redirect_to post
  end

  private

  def get_post
    @post = Post.find(params[:id])
  end

end

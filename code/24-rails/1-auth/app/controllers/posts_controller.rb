class PostsController < ApplicationController
  respond_to :html, :xml, :json

  def index
    respond_with(@posts = Post.all)
  end

  def create
    @post = Post.create(params[:post])
    respond_with(@post, :location => posts_url)
  end
end

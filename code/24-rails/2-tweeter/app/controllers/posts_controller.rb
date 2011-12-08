class PostsController < ApplicationController
  skip_before_filter :login_required, :only => [:index]
  before_filter(:only => [:edit, :update, :destroy]) { |c| c.authorization_required @post }

  respond_to :html, :js

  def index
    @posts = Post.order('created_at DESC').limit(20)
    @post = Post.new
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    @post.save
    respond_with(@post, :location => posts_url)
  end

  def edit
  end

  def update
    if @post.update_attributes(params[:post])
      redirect_to posts_url, :notice  => "Successfully updated post."
    else
      render :action => 'edit'
    end
  end

  protected

  def get_member_resources
    @post = Post.find(params[:id])
  end

end

class TweetsController < ApplicationController
  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(params[:tweet])
    if @tweet.save
      redirect_to tweets_url, :notice => "Successfully created tweet."
    else
      render :action => 'new'
    end
  end

  def edit
    @tweet = Tweet.find(params[:id])
  end

  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update_attributes(params[:tweet])
      redirect_to tweets_url, :notice  => "Successfully updated tweet."
    else
      render :action => 'edit'
    end
  end
end

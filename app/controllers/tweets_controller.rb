class TweetsController < ApplicationController
  # GET /tweets
  def index
    @tweets = Tweet.order('id DESC').page(params[:page])
  end

  # GET /tweets/1
  def show
    @tweet = Tweet.find(params[:id])
  end
end

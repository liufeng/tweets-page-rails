class TweetsController < ApplicationController
  # GET /tweets
  def index
    @tweets = Tweet.all.reverse
  end

  # GET /tweets/1
  def show
    @tweet = Tweet.find(params[:id])
  end
end

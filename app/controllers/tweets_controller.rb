class TweetsController < ApplicationController
  # GET /tweets
  def index
    @tweets = Tweet.order('id DESC').page(params[:page])
  end
end

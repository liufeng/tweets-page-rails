class TweetsController < ApplicationController
  # GET /tweets
  # GET /tweets.json
  def index
    @tweets = Tweet.all.reverse

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tweets }
    end
  end

  # GET /tweets/1
  # GET /tweets/1.json
  def show
    @tweet = Tweet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tweet }
    end
  end
end

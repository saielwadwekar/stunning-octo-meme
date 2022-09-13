class TweetsController < ApplicationController
  def index
  	@tweets = Tweet.all
  end

  def show
  	@tweet = Tweet.find(params[:id])
  end

  def destroy
  end

  def delete
  end

  def create
#debugger
  	@tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to @tweet
    else
      render :new, status: 422
    end
  end

  def new
  	@tweet = Tweet.new
  end

  def edit
  end

  def update
  end

  private

  def tweet_params
  	params.require(:tweet).permit(:user_name, :content)
  end
end

class TweetsController < ApplicationController
  def index
  	@tweets = Tweet.all
  end

  def show
  	@tweet = Tweet.find(params[:id])
  end

  def destroy
		@tweet = Tweet.find(params[:id])
    @tweet.destroy

    redirect_to tweets_path, status: 303
  end

  def delete
  end

  def create
  	@tweet = Tweet.new(tweet_params)
  	# debugger
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
  	@tweet = Tweet.find(params[:id])
  end

  def update
  	@tweet = Tweet.find(params[:id])

    if @tweet.update(tweet_params)
      redirect_to @tweet
    else
      render :edit, status: 422
    end
  end

  private

  def tweet_params
  	params.require(:tweet).permit(:user_name, :content)
  end
end

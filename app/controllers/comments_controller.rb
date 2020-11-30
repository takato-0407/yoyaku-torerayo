class CommentsController < ApplicationController
  before_action :set_item, only: [:index, :create]
  before_action :move_to_root, only: [:index]
  
  def index
    end
  end

  def create
    @tweet_comment_tkt = TweetCommentTkt.new(tweet_comment_tkt)

    if @tweet_comment_tkt.valid?
      @tweet_comment_tkt.save
      redirect_to root_path
    else
      render :index
    end
  end
  
  private

  def tweet_comment_tkt
    params.permit(:name, :text, :tweet_id).merge(user_id: current_user.id)
  end

  

  def set_item
    @tweet = Tweet.find(params[:tweet_id])
  end

  def move_to_root
    unless user_signed_in?
      redirect_to new_user_session_path
    end
    if user_signed_in? && current_user.id == @tweet.user_id 
      redirect_to root_path
    end
  end

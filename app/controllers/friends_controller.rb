class FriendsController < ApplicationController
  before_action :set_friend, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def index
    @friends = Friend.all
  end
  def show
  end
  def new
    # @friend = Friend.new
    @friend = current_user.friends.build  
  end
  def create
    # @friend = Friend.new(friend_params)
    @friend = current_user.friends.build(friend_params)
    if @friend.save
      redirect_to root_path
    else
    render :new
    end
  end
  def destroy
    if @friend.destroy
      redirect_to friends_path
    end
  end
  def edit
    @friend = Friend.find(params[:id])
end
  def update
    if @friend.update(friend_params)
      redirect_to root_path
    end
  end

  def correct_user
    @friend = current_user.friends.find_by(id: params[:id])
    redirect_to friends_path, notice: "Not Authorized to edit this friend" if @friend.nil?
  end
  private
  def set_friend
    @friend = Friend.find(params[:id])
  end
  def friend_params
    params.require(:friend).permit(:fullname, :body, :phone, :user_id)
  end
end
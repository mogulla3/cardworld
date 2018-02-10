class UsersController < ApplicationController
  def index
    # render json: User.all
    @users = User.all.decorate
    @users2 = UserDecorator.decorate_collection(User.all)
  end

  def show
    @user = User.includes(:decks).find_by(id: params[:user_id]).decorate
    # render json: User.find_by(id: params[:user_id])
  end
end

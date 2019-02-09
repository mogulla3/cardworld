class UsersController < ApplicationController
  def index
    @users = User.all.decorate
  end

  def show
    @user = User.includes(:decks).find_by(id: params[:user_id]).decorate
  end
end

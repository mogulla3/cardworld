class TagsController < ApplicationController
  def index
    render json: Tag.all
  end

  def show
    render json: Tag.find_by(id: params[:tag_id])
  end
end

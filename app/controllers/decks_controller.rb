class DecksController < ApplicationController
  def index
    render json: Deck.all
  end

  def show
    render json: Deck.find_by(id: params[:deck_id])
  end
end

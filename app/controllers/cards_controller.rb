class CardsController < ApplicationController
  def index
    render json: Card.where(deck_id: params[:deck_id])
  end

  def show
    render json: Card.where(deck_id: params[:deck_id], id: params[:card_id])
  end
end

class DecksController < ApplicationController
  def index
    render json: Deck.all
  end

  def show
    render json: Deck.find_by(id: params[:id])
  end

  def edit
    @deck = Deck.find(params[:id])
  end

  def update
    @deck = Deck.find(params[:id])
    authorize @deck

    if @deck.update(deck_params)
      redirect_to(deck_path(@deck.id))
    else
      render :edit
    end
  end

  private

  # For pundit
  def current_user
    User.find(1)
  end

  def deck_params
    params.require(:deck).permit(:name)
  end
end

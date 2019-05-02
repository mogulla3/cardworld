class FlashesController < ApplicationController
  def index; end

  def add
    flash[:message] = 'Hello, flash!'
    render :index
  end

  def add_and_redirect
    redirect_to(flashes_path, flash: { message: 'Hello, flash!' } )
  end
end

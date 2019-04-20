class FlashesController < ApplicationController
  def index; end

  def flash_test
    redirect_to(flashes_path, flash: { message: 'Hello, flash!' } )
  end
end

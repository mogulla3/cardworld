class FlashesController < ApplicationController
  def index; end

  def flash_test
    redirect_to(flashes_path, flash: { message: 'Hello, flash! from #flash_test' } )
  end

  def flash_test2
    flash[:message1] = 'Hello, flash! from #flash_test2'
    flash[:message2] = 'Hello, flash! from #flash_test2'
    flash[:message3] = 'Hello, flash! from #flash_test2'
    render :index
  end
end

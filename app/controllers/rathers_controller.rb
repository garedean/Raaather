class RathersController < ApplicationController
  def index
    @rathers = Rather.all
  end

  def new
    @rather = Rather.new
  end

  def create
    @rather = Rather.new(rather_params)

    if @rather.save
      redirect_to root_path
    else
      render "new"
    end
  end

  private

  def rather_params
    params.require(:rather).permit(:choice_one_text, :choice_two_text)
  end

end

class RathersController < ApplicationController
  def index
    @rathers = Rather.all
  end

  def new
    @rather = Rather.new
    @choice_one = @rather.choices.build
    @choice_two = @rather.choices.build
  end

  def create
    binding.pry
    @rather = Rather.new()

    if @rather.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def update
    @rather = Rather.find(params[:id])
    @choice = nil

    if rather_params[:choice_one_text]
      @choice = 'choice_one'
      choice_one_votes = @rather.choice_one_votes
      @rather.update(choice_one_votes: choice_one_votes + 1);
    else
      @choice = 'choice_two'
      choice_two_votes = @rather.choice_two_votes
      @rather.update(choice_two_votes: choice_two_votes + 1);
    end

    @rather.save

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private

  def rather_params
    params.require(:rather).permit()
  end

end

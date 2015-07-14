class ChoicesController < ApplicationController
  def update
    @rather = Rather.find(params[:rather_id])
    @choice = @rather.choices.find(params[:id])

    @choice.update(votes: @choice.votes + 1)

    respond_to do |format|
      format.html { redirect_to :back }
      format.js { render "rathers/update" }
    end
  end
end

class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    @user = current_user
    @vote.user = @user
    @vote.save

    @choice = Choice.find(vote_params[:choice_id])
    @rather = Rather.find(@choice.rather_id)

    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private

  def vote_params
    params.permit(:choice_id)
  end
end

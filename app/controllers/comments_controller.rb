class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @rather = Rather.find(params[:rather_id])
  end

  def create
    @user = current_user
    @rather = Rather.find(params[:rather_id])
    @comment = Comment.new(comment_params)
    @rather.comments.push(@comment)
    @comment.user = @user;

    if @comment.save
      respond_to do |format|
        format.html { redirect_to :back }
        format.js
      end
    else
      redirect_to :back
    end

  end

  private

  def comment_params
    params.require(:comment).permit(:body, :rather_id)
  end
end

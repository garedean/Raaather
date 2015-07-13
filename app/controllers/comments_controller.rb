class CommentsController < ApplicationController
  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.new
    @rather = Rather.find(params[:rather_id])
  end

  def create
    @rather = Rather.find(params[:rather_id])
    @comment = Comment.new(comment_params)
    if @comment.save
      @rather.comments.push(@comment)
      redirect_to root_path
    else
    render "new"
    end
  end




  private
  def comment_params
    params.require(:comment).permit(:body, :rather_id)
  end
end

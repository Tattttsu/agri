class CommentsController < ApplicationController
  def create
    @farm = Farm.find(params[:farm_id])
    @comment = @farm.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to request.referer
      flash[:success] = "コメントを投稿しました"
    else
      flash[:alert] = "コメントの投稿に失敗しました"
    end
  end

  def destroy
    @farm = Farm.find(params[:farm_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to request.referer
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :farm_id)
  end
end

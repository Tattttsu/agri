class CommentsController < ApplicationController
  def create
    @farm = Farm.find(params[:farm_id])
    @comment = @farm.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to request.referer
      flash[:success] = "コメントを投稿しました"
    else
      redirect_to request.referer
      flash[:alert] = "コメントの投稿に失敗しました"
    end
  end

  def edit
    @farm = Farm.find(params[:farm_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @farm = Farm.find(params[:farm_id])
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to @farm
      flash[:success] = "コメントを編集しました"
    else
      flash.now[:danger] = "コメントの投稿に失敗しました"
      render 'comments/edit'
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to request.referer
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :farm_id)
  end
end

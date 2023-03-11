class CommentsController < ApplicationController
  def create
    @farm = Farm.find(params[:farm_id])
    @comment = @farm.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      render :comment
    else
      render "farms/show"
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
    Comment.find(params[:id]).destroy
    flash[:success] = "コメントを削除しました"
    @farm = Farm.find(params[:farm_id])
    render :comment
  end

  private
  def comment_params
    params.require(:comment).permit(:content, :farm_id)
  end
end

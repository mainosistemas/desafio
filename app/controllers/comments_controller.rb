class CommentsController < ApplicationController

  def create
    @comment = Comment.new(user_id: params[:user_id], post_id: params[:post_id], body: comment_params[:body])

    if @comment.save
    else
    end
  end

  def update
    @comment = Comment.find(params[:id])

    if @comment.update(comment_params)
    else
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
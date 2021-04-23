module Posts
  class CommentsController < ApplicationController

    def create

      @comment = post.comments.new(user: current_user, body: comment_params[:body])

      @comment.save!
    end

    def update
      @comment = Comment.find(params[:id])

      @comment.update(comment_params)
    end

    private

    def post
      Post.find(params[:post_id])
    end

    def comment_params
      params.require(:comment).permit(:body)
    end
  end
end
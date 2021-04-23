module Posts
  class CommentsController < ApplicationController

    def create
      @comment = post.comments.new(user: current_user, body: comment_params[:body])

      respond_to do |format|
        if @comment.save
          format.html { redirect_to [post.blog, post] }
        else
        end
      end
    end

    def update
      @comment = Comment.find(params[:id])

      if @comment.update(comment_params)
      else
      end
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
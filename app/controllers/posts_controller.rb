class PostsController < ApplicationController
  before_action :find_post, only: %i[edit update destroy show]

  def new
    @post = current_user.blog.posts.new
  end

  def show
    @comments = @post.comments
  end

  def create
    @post = current_user.blog.posts.new(post_params)
    @post.user = current_user

    if @post.save
      flash[:notice] = 'Post succesfully created!'
      redirect_to @post.blog
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:notice] = 'Post succesfully updated!'
      redirect_to @post.blog
    else
      render :edit
    end
  end

  def destroy
    @post.destroy

    flash[:notice] = 'Post deleted successfully!'
    redirect_to @post.blog
  end

  private

  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
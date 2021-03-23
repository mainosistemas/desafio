class BlogsController < ApplicationController

  def index
    @blogs = Blog.all.sample(5)
  end

  def show
    @blog = Blog.find_by!(slug: params[:slug])
  end

  def new
    @blog = current_user.build_blog
  end

  def create
    @blog = current_user.build_blog(blog_params)

    if @blog.save
      flash[:notice] = 'Blog succesfully created!'
      redirect_to blogs_path
    else
      render :new
    end
  end

  def edit
    @blog = current_user.blog
  end

  def update
    @blog = current_user.blog

    if @blog.update(blog_params)
      flash[:notice] = 'Blog succesfully updated!'
      redirect_to blogs_path
    else
      render :edit
    end
  end

  private

  def blog_params
    params.require(:blog).permit(:description, :slug)
  end
end
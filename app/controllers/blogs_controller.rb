class BlogsController < ApplicationController
  def index
    @blogs=Blog.all
  end

  def show
  end

  def new
    @blog=Blog.new
  end

  def create
    blog=Blog.new(blog_params)
    blog.save
    redirect_to blogth_path
  end

  def edit
  end

# --------------ここから下には書いちゃダメ！！-------------------
  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end

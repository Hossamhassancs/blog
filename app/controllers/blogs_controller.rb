class BlogsController < ApplicationController
  before_action :authorize_request
  before_action :set_blog, only: [:show, :update, :destroy]

  def index
    @blogs = current_user.blogs.all

    render json: @blogs
  end

  def show
    render json: @blog
  end

  def create
    @blog = current_user.blogs.new(blog_params)

    if @blog.save
      render json: @blog, status: :created, location: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  def update
    if @blog.update(blog_params)
      render json: @blog
    else
      render json: @blog.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @blog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blog
      @blog = Blog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def blog_params
      params.require(:blog).permit(:title, :body)
    end
end

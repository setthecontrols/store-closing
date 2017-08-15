class PostsController < ApplicationController
  before_action :find_post, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_user!, except: [:index, :show]

  def index
    @posts = Post.all.order("created_at DESC")
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)


    if @post.save
      redirect_to @post, notice: "Yes! It was posted!"
    else
      render 'new'
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: "Post was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @post.destroy
    redirect_to root_path
  end

  private

    def post_params
      params.require(:post).permit(:name, :address, :city, :state, :zip, :phone_number, :tag, :close_date, :description, :image)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end

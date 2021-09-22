class PostsController < ApplicationController
  before_action :set_post, only: %i[edit update destroy]

  def index
    @posts = Post.includes(:user, :likes).order(created_at: :desc).page(params[:page]).per(Post::PER)
  end

  def new
    @post = Post.new
  end

  def create
    post = current_user.posts.create!(post_params)
    redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.order(created_at: :desc)
  end

  def update
    @post.update!(post_params)
    redirect_to @post
  end

  def destroy
    @post.destroy!
    redirect_to root_path
  end

  def search; end

  private

  def post_params
    params.require(:post).permit(:body, :image, :image_cache)
  end

  def set_post
    @post = current_user.posts.find(params[:id])
  end
end

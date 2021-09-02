class LikesController < ApplicationController
  before_action :post_params

  def create
    current_user.likes.create!(post_id: @post.id)
  end

  def destroy
    current_user.likes.find_by(post_id: @post.id).destroy!
  end

  private

  def post_params
    @post = Post.find(params[:post_id])
  end
end

class UsersController < ApplicationController
  before_action :set_user, only: [:show]
  def show
    @likes = Like.where(user_id: @user.id).order(created_at: :desc)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end

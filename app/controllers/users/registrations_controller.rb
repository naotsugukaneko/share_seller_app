class Users::RegistrationsController < Devise::RegistrationsController
  before_action :ensure_normal_user, only: %i[update destroy]

  def ensure_normal_user
    redirect_to root_path, alert: "ゲストユーザーの更新・削除はできません。" if resource.email == "guest@example.com"
  end

  protected

  # アカウント編集後、プロフィール画面に移動する
  def after_update_path_for(_resource)
    user_path(id: current_user.id)
  end
end

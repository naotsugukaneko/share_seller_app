EMAIL = "test@example.com"
PASSWORD = "password"
# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  user.name = "テスト"
  puts "ユーザーの初期データインポートに成功しました。"
end

AdminUser.find_or_create_by!(email: 'admin@example.com') do |admin_user|
  admin_user.password = PASSWORD
  admin_user.password_confirmation = PASSWORD
  puts "管理者ユーザーの初期データインポートに成功しました。"
end

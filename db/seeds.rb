EMAIL = "admin@example.com"
PASSWORD = "password"

AdminUser.find_or_create_by!(email: EMAIL) do |admin_user|
  admin_user.password = PASSWORD
  admin_user.password_confirmation = PASSWORD
  puts "管理者ユーザーの初期データインポートに成功しました。"
end

puts "初期データの投入に成功しました！"

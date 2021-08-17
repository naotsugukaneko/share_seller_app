# User.destroy_all
# Post.destroy_all

EMAIL = "test@example.com"
PASSWORD = "password"
# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  user.name = "テスト"
  puts "ユーザーの初期データインポートに成功しました。"
end

AdminUser.find_or_create_by!(email: "admin@example.com") do |admin_user|
  admin_user.password = PASSWORD
  admin_user.password_confirmation = PASSWORD
  puts "管理者ユーザーの初期データインポートに成功しました。"
end

user1 = User.find_or_create_by!(name: "佐藤", email: "satou@example.com", password: PASSWORD)
user2 = User.find_or_create_by!(name: "鈴木", email: "suzuki@example.com", password: PASSWORD)
user3 = User.find_or_create_by!(name: "田中", email: "tanaka@example.com", password: PASSWORD)

Post.find_or_create_by!(body: "おにぎり新規売場", user_id: user2.id)
Post.find_or_create_by!(body: "チョコレート新規商品", user_id: user1.id)
Post.find_or_create_by!(body: "夏の定番 フェイシャルペーパー", user_id: user3.id)

puts "初期データの投入に成功しました！"

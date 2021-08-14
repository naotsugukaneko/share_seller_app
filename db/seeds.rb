User.destroy_all

User.create!(name: "テスト", email: "test@example.com", password: "password")
puts "ユーザーの初期データインポートに成功しました。"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
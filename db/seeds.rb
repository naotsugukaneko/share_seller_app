User.destroy_all

User.create!(name: "テスト", email: "test@example.com", password: "password")
puts "ユーザーの初期データインポートに成功しました。"

ActiveAdmin.register Post do
  permit_params :day, :body, :image, :likes_count, :user_id
end

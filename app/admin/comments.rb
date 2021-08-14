ActiveAdmin.register Comment do
  permit_params :text, :user_id, :post_id
end

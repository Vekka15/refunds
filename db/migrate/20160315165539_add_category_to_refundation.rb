class AddCategoryToRefundation < ActiveRecord::Migration
  def change
    add_column :refundations, :category_id, :integer
  end
end

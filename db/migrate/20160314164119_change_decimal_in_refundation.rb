class ChangeDecimalInRefundation < ActiveRecord::Migration
    def up
    change_column :refundations, :amount_of_money, :integer
  end

  def down
    change_column :refundations, :amount_of_money, :decimal
  end
end

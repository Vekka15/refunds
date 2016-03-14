class CreateRefundations < ActiveRecord::Migration
  def change
    create_table :refundations do |t|
      t.string :name
      t.decimal :amount_of_money
      t.date :time
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

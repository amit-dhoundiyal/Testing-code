class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.integer :transaction_id
      t.integer :tokens
      t.float :amount
      t.string :transaction_status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

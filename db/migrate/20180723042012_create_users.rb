class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.string :mobile_code
      t.string :mobile_no
      t.string :country_name

      t.timestamps
    end
  end
end

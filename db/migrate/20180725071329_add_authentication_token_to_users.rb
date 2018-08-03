class AddAuthenticationTokenToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :authentication_token, :string
    add_index :users, :authentication_token, unique: true
    add_column :users, :address, :string

  end
end

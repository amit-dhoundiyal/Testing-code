class AddFileToWhitePaper < ActiveRecord::Migration[5.2]
  def change
  	add_column :white_papers, :file, :string

  end
end

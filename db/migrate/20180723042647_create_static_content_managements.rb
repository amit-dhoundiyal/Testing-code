class CreateStaticContentManagements < ActiveRecord::Migration[5.2]
  def change
    create_table :static_content_managements do |t|
    	t.string :title
        t.string :description
      
      t.timestamps
    end
  end
end

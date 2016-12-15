class CreateVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :visitors do |t|
    	t.string :phone
    	t.string :email
    	t.string :first_name
    	t.string :last_name
    	t.boolean :subscribe
    	
      t.timestamps
    end
  end
end

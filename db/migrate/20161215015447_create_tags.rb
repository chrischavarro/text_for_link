class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
    	t.integer :tag_name
      t.timestamps
    end
  end
end
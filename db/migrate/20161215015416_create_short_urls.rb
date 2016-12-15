class CreateShortUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :short_urls do |t|
    	t.integer :campaign_id
    	t.string :short_url
    	t.string :destination_url

      t.timestamps
    end
  end
end

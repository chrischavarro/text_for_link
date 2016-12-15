class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
    	t.integer :user_id
    	t.integer :campaign_phone
    	t.string :campaign_keyword
    	t.string :destination_url
    	t.string :campaign_description
    	t.boolean :active 
    	t.time :start_time
    	t.time :end_time

      t.timestamps
    end
  end
end

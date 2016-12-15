class CreateCampaignTags < ActiveRecord::Migration[5.0]
  def change
    create_table :campaign_tags do |t|
    	t.integer :tag_id
    	t.integer :campaign_id
      t.timestamps
    end
  end
end

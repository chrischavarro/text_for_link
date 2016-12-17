class ChangeStartAndEndCampaignTimesToDatetime < ActiveRecord::Migration[5.0]
  def change
  	remove_column :campaigns, :start_time, :datetime
  	remove_column :campaigns, :end_time, :datetime
  end
end

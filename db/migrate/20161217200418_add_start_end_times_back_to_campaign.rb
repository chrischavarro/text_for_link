class AddStartEndTimesBackToCampaign < ActiveRecord::Migration[5.0]
  def change
  	  	add_column :campaigns, :start_time, :datetime
  	  	add_column :campaigns, :end_time, :datetime

  end
end

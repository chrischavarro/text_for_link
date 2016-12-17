class ChangePhoneNumberTypeOnCampaignToString < ActiveRecord::Migration[5.0]
  def change
  	change_column :campaigns, :campaign_phone, :string
  end
end

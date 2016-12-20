class CampaignsController < ApplicationController
	def new
		@campaign = Campaign.new

	end

	def create
		@campaign = Campaign.new(
			user_id: current_user.id,
			campaign_phone: params[:campaign][:campaign_phone],
			campaign_keyword: params[:campaign][:campaign_keyword],
			destination_url: params[:campaign][:destination_url],
			campaign_description: params[:campaign][:campaign_description],
			active: params[:campaign][:active],
			start_time: params[:campaign][:start_time],
			end_time: params[:campaign][:end_time]
			)
		@campaign.save

		redirect_to root_path
	end

	def edit
		@campaign = Campaign.find_by(id: params[:id])
	end

	def update
		@campaign = Campaign.find_by(id: params[:id])

		if @campaign.update_attributes(campaign_params)
			redirect_to root_path
		else
			render 'edit'
		end
	end

	private

	def campaign_params
		params.require(:campaign).permit(:user_id, :campaign_phone, :campaign_keyword, :destination_url, :campaign_description, :active, :start_time, :end_time)
	end
end

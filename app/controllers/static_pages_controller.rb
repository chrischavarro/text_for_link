class StaticPagesController < ApplicationController
	def home
		if user_signed_in?
			@campaigns = current_user.campaigns.order('id ASC')
		end	
	end
end

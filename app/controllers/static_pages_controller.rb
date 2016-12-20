class StaticPagesController < ApplicationController
	def home
		@campaigns = current_user.campaigns.order('id ASC')
	end
end

class Campaign < ApplicationRecord
	belongs_to :user
	has_many :visitors
	has_many :short_urls
	has_many :short_url_logs
	has_many :campaign_tags
end

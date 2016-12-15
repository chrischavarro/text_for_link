class CreateShortUrlLogs < ActiveRecord::Migration[5.0]
  def change
    create_table :short_url_logs do |t|
    	t.integer :short_url_id
    	t.integer :ip_address
    	t.string :utm_campaign
    	t.string :utm_medium
    	t.string :utm_source
    	t.string :utm_term
    	t.string :utm_content

      t.timestamps
    end
  end
end

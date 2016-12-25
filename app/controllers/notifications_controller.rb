class NotificationsController < ApplicationController
 
  skip_before_action :verify_authenticity_token
 
  def notify
  	account_sid = 'AC0e677fee0759f3c09a0179c908367979'
  	account_auth_token = '7f228d90fb8c958b022dddefc65c1919'

    client = Twilio::REST::Client.new account_sid, account_auth_token
  	message = client.messages.create from: '+13053631650', to: '+17865645859', body: 'Learning to send SMS you are.', media_url: 'http://linode.rabasa.com/yoda.gif'

  	render plain: message.status
  end
 
end

require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token


  def voice
    response = Twilio::TwiML::Response.new do |r|
      r.Say 'Hey there. Congrats on integrating Twilio into your Rails 4 app.', :voice => 'alice'
         r.Play 'http://linode.rabasa.com/cantina.mp3'
    end

    render_twiml response
  end

  def inbound
    account_sid = 'AC0e677fee0759f3c09a0179c908367979'
    account_auth_token = '7f228d90fb8c958b022dddefc65c1919'
    
    @client = Twilio::REST::Client.new account_sid, account_auth_token
 
 # Assigning the incoming visitor number, number visitor texted, and keyword texted to variables 
    visitor = params[:From]
    campaign_number = params[:To]
    keyword = params[:Body]

# Checking to see if phone # visitor texts belongs to a campaign, assigning that campaign to variable campaign_visited
      campaign_visited = Campaign.find { |campaign| campaign.campaign_phone == campaign_number}

    if Visitor.exists?(phone: visitor)
      message = @client.messages.create from: campaign_number, to: visitor, body: 'Great! What’s your email (we’ll send the link there)?', status_callback: request.base_url + '/twilio/status'
      
      if 
      # puts campaign_visited
    else
      @visitor = Visitor.create(
        id: params[:SmsSid],
        phone: params[:From]
        )
      message = @client.messages.create from: campaign_number, to: @visitor.phone, body: 'Great! What’s your email (we’ll send the link there)?', status_callback: request.base_url + '/twilio/status'
    end



    # @client.account.incoming_phone_numbers.list.each do |number|
    #   puts number.phone_number
    # end

    render plain: message.status
  end

  def status
    render_twiml Twilio::TwiML::Response.new
  end

end
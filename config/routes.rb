Rails.application.routes.draw do
  devise_for :users
  root to: 'static_pages#home'
  post 'twilio/voice' => 'twilio#voice'
  post 'notifications/notify' => 'notifications#notify'
  post 'twilio/status' => 'twilio#status'
  post 'twilio/inbound' => 'twilio#inbound'

  resources :campaigns
end

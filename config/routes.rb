Rails.application.routes.draw do
  root 'twilio#index'
  get '/twilio_sms' => 'twilio#twilio_sms'
  #post '/twilio_sms' => 'twilio#twilio_sms'
end

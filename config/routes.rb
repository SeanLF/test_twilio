Rails.application.routes.draw do
  root 'twilio#index'
  get '/twilio_sms' => 'twilio#twilio_sms'
  get '/reset' => 'twilio#reset'
  #post '/twilio_sms' => 'twilio#twilio_sms'
end

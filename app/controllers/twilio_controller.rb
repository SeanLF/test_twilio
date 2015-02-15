class TwilioController < ApplicationController

  def index
    @twilios = Message.all
    @count = @twilios.count
  end

  def twilio_sms
    @message = Message.new(number: params['From'], body: params['Body'])

    respond_to do |format|
      if @message.save

        reply = "Thanks! 👍"

        response = Twilio::TwiML::Response.new do |r|
          r.Sms reply
        end

        format.xml { render :text => response.text }
      else
        raise "Can't save!"
      end
    end
  end
end

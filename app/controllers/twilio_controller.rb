class TwilioController < ApplicationController

  def index
    set_title
    @twilios = Message.all.reverse
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

  def reset
    Message.delete_all
    redirect_to action: "index"
    return
  end

 private
 def set_title
  @title_description = "Index"
  end
end

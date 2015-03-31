class TwilioController < ApplicationController

  def send_sms
    message = params[:message]
    number = params[:number]
    account_sid = "AC434eeec4d7ea7512c0539666c9555349"
    auth_token = "f70b6ce05fe2f128639c2e38c6e26e39"

    @client = Twilio::REST::Client.new account_sid, auth_token 

    @message = @client.account.messages.create({:to => "+1"+"#{number}", :from => "+17028304854", :body => "#{message}"})

    redirect_to '/'
  end
end
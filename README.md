#README

To get started:

* Create a [Twilio](http://twilio.com/) account

* Download [ngrok](https://ngrok.com), then execute <code>./ngrok 3000</code> from the folder where you saved it.

* Change the [messaging request url](https://www.twilio.com/user/account/phone-numbers/incoming) to a GET request and set it to the https ngrok forwarding URL and append <code>/twilio_sms/</code> to it.
Example: https://11a11a11.ngrok.com/twilio_sms

* Execute <code>rake db:migrate</code>

* Execute <code>rails server</code>

* You can now send messages to your twilio phone number and save them to your app!

require "dotenv"
require "twilio-ruby"

Dotenv.load

# Configure twilio-ruby with your Twilio account credentials
# You can find yours at https://www.twilio.com/user/account
Twilio.configure do |config|
  config.account_sid = ENV['TWILIO_ACCOUNT_SID']
  config.auth_token = ENV['TWILIO_AUTH_TOKEN']
end

# Create a client to talk to Twilio
client = Twilio::REST::Client.new

# Send a new SMS message to yourself
client.messages.create(
  from: '+18507244542',
  to: '+15157102628',
  body: 'Yo. I am a robot.'
)

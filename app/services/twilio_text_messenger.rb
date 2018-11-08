class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: ENV["twilio_phone_number"],
      to: ENV["test_phone_number"],
      body: message
    })
  end
end

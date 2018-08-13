class TwilioTextMessenger
  attr_reader :message

  def initialize(message)
    @message = message
  end

  def call
    client = Twilio::REST::Client.new
    client.messages.create({
      from: '+16196481608',
      to: '6197502444',
      body: message
    })
  end
end

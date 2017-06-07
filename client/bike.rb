require_relative 'send_message_service.rb'

class Bike
  input = ARGV

  if input.length.positive?
    client_id = ARGV[0]
    message = (0..159).map { rand(10) }.join
    SendMessageService.new(client_id, message).call
  else
    puts 'No client id'
  end
end

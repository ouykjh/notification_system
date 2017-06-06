require 'sidekiq'

class MessagesWorker
  include Sidekiq::Worker

  def perform
    SaveBikeMessagesService.new(FetchMessagesService.new.call).call
  end
end

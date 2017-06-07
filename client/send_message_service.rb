require 'redis'
require 'redis-namespace'
require 'json'

class SendMessageService
  @@redis = Redis.new
  @@social_bike_redis = Redis::Namespace.new(:social_bike, redis: @@redis)

  def initialize(client_id, message)
    @client_id = client_id
    @message = message
  end

  def call
    send_message
  end

  private

  def send_message
    @@social_bike_redis.set(key, message)
  end

  def message
    { client_id: @client_id, message: @message }.to_json
  end

  def key
    @client_id + Time.now.to_f.to_s
  end
end

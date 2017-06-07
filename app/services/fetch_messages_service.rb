class FetchMessagesService
  def call
    fetch_messages
  end

  private

  def fetch_messages
    keys = $social_bike_redis.keys
    return unless keys.present?
    messages = redis_data(keys)
    $social_bike_redis.del(keys)
    messages
  end

  def redis_data(keys)
    redis_entities = []
    keys.each do |key|
      value = $social_bike_redis.get(key)
      redis_entities.push(JSON.parse(value)) if valid?(value)
    end
    redis_entities
  end

  def valid?(data)
    return unless valid_json?(data)
    valid_message_length?(JSON.parse(data)['message'])
  end

  def valid_json?(json)
    JSON.parse(json)
    return true
  rescue JSON::ParserError => e
    return false
  end

  def valid_message_length?(message)
    message.length == 160
  end
end

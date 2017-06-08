require 'rails_helper'

RSpec.describe FetchMessagesService do
  subject { described_class.new.call }
  let(:message) { attributes_for(:bike_message) }
  let(:invalid_message) { attributes_for(:bike_message, message: '100') }
  let(:missing_attributes) { Hash.new(client: 'client') }

  context 'valid data' do
    it 'returns bike message' do
      $social_bike_redis.set('key_1', message.to_json)
      expect(subject).to contain_exactly(message.stringify_keys)
    end
  end

  context 'message to short' do
    it 'does not return invalid message' do
      $social_bike_redis.set('key_1', invalid_message.to_json)
      expect(subject).to_not contain_exactly(invalid_message.stringify_keys)
    end
  end

  context 'data is not json' do
    it 'does not return invalid message' do
      $social_bike_redis.set('key_1', message)
      expect(subject).to_not contain_exactly(message.stringify_keys)
    end
  end

  context 'message with wrong attributes' do
    it 'does not return invalid message' do
      $social_bike_redis.set('key_1', missing_attributes)
      expect(subject).to_not contain_exactly(message.stringify_keys)
    end
  end
end

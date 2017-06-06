require 'rails_helper'

RSpec.describe SaveBikeMessagesService do
  subject { described_class.new(messages).call }
  let(:messages) { (0..2).map { attributes_for(:bike_message) } }

  it 'create new bike messages' do
    expect { subject }.to change { BikeMessage.count }.from(0).to(3)
  end
end

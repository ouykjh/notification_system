require 'rails_helper'

RSpec.describe MessagesWorker do
  let(:subject) { described_class.new }

  describe '#perform' do
    it 'calls SaveBikeMessagesService' do
      expect_any_instance_of(SaveBikeMessagesService).to receive(:call)
      subject.perform
    end

    it 'calls FetchMessagesService' do
      expect_any_instance_of(FetchMessagesService).to receive(:call)
      subject.perform
    end
  end
end

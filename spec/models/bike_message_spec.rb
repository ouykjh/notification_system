require 'rails_helper'

RSpec.describe BikeMessage, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:client_id) }
    it { is_expected.to validate_presence_of(:message) }
    it { is_expected.to validate_length_of(:message) }
  end
end

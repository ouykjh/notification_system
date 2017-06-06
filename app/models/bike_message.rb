class BikeMessage < ApplicationRecord
  validates :client_id, :message, presence: true
  validates_length_of :message, is: 160
end

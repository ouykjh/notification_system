class BikeMessagesController < ApplicationController
  expose :bike_messages, -> { BikeMessage.all }
end

class SaveBikeMessagesService
  def initialize(data)
    @data = data
  end

  def call
    save_data
  end

  private

  def save_data
    return unless @data.present?
    @data.each do |m|
      BikeMessage.create(m)
    end
  end
end

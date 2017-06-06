FactoryGirl.define do
  factory :bike_message do
    client_id   Faker::Name.name
    message     { (0..159).map { rand(10) }.join }
  end
end

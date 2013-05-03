FactoryGirl.define do

  sequence :aircraft_registration do |n|
    "N#{'%03d' % n}AA"
  end

  factory :airplane do
    manufacturer { create :aircraft_manufacturer }
  end

end
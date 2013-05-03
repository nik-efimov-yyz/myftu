FactoryGirl.define do

  sequence :manufacturer_name do |n|
    "manufacturer-#{n}"
  end

  factory :aircraft_manufacturer do
    name { generate :manufacturer_name }
  end

end
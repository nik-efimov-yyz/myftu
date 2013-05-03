FactoryGirl.define do

  factory :operator do
    sequence(:name) { |n| "operator-#{n}" }
    owner { create :user }
  end

end
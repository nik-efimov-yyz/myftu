namespace :db do
  desc "Populate Database with Dev Data"

  task :populate => :environment do
    require "populator"
    require "faker"

    # Cleanup
    User.where(:protected => false).destroy_all

    # Users
    User.populate 10..30 do |user|
      user.first_name = Faker::Name.first_name
      user.last_name = Faker::Name.last_name
      user.email = Faker::Internet.email
      user.password = "qwerty"
      user.created_at = 6.months.ago..Time.now
    end

  end

end
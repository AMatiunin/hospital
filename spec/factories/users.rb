require 'faker'

FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    phone { rand.to_s[2..11]  }
    password { rand.to_s[2..7]  }
  end
end

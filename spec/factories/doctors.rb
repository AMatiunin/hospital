require 'faker'

FactoryBot.define do
  factory :doctor do
    name { Faker::Name.name }
    phone { rand.to_s[2..11]  }
    password { rand.to_s[2..11]  }
    profession_id { Profession.create(name: Faker::Name.name).id }
  end
end

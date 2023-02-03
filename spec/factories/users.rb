FactoryBot.define do
    factory :user do
      username { Faker::Name.name }
      name { Faker::Name.name }
      password { Faker::Internet.password(min_length: 8) }
      email {Faker::Internet.email}
    end
end
  
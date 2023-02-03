FactoryBot.define do
    factory :blog do
      title { Faker::Lorem.word }
      body { Faker::Lorem.word }
      user_id nil
    end
end
  
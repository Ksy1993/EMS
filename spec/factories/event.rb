require 'rails_helper'
FactoryBot.define do
  factory :event do
   title { Faker::Name.title }
   start { Faker::Date.start }
   
  end
end
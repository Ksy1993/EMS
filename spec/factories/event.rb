require 'rails_helper'
FactoryGirl.define do
  factory :event do
   title { Faker::Name.title }
   start { Faker::Date.start }
   
  end
end
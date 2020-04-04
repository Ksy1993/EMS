require 'rails_helper'
FactoryGirl.define do
  factory :event do
    # email    { Faker::Internet.email }
    # password { Faker::Internet.password }
    title "good#123"
    start "2020-04-06"
   
  end
end
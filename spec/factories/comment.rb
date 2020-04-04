require 'rails_helper'
FactoryGirl.define do
  factory :comment do
    # email    { Faker::Internet.email }
    # password { Faker::Internet.password }
    description "good"
    event_id "4"
  end
end
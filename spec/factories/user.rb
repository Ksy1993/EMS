require 'rails_helper'
FactoryGirl.define do
  factory :user do
    # email    { Faker::Internet.email }
    # password { Faker::Internet.password }
    email "rahul@123"
    password "rahul123"
  end
end
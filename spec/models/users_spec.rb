require 'spec_helper'
require 'rails_helper'

RSpec.describe User, type: :model do
	 context 'associations' do
      it { should have_many(:events) }
    end
end

RSpec.describe User, type: :model do
  it "is valid with a email and password" do
    user = User.new(
      email:      "ajay123@gmail.com",
      password:   "ajay@123"
    )
    expect(user).to be_valid
  end
end
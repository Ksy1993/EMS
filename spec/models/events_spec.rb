require 'spec_helper'
require 'rails_helper'

RSpec.describe Event, type: :model do 
	context 'validations' do
		it { should validate_presence_of(:title) }
	end
	 context 'associations' do
      it { should belong_to(:user) }
      it { should have_many(:comments) }
    end
end


require 'rails_helper'
RSpec.describe Event, type: :model do
subject { Event.new( title: "test20", start: "2020-03-31", end: "2020-04-02", user_id: 1)}
before { subject.save}
it "title should be present" do
subject.title = nil
expect(subject).to_not be_valid
end
it "start date should be present" do
subject.start = nil
expect(subject).to_not be_valid
end
it "end date should be present" do
subject.end = nil
expect(subject).to_not be_valid
end
it "user id should be present" do
subject.user_id = nil
expect(subject).to_not be_valid
end
it "title should not be too long" do
subject.title = "a"
expect(subject).to_not be_valid
end
it "title should not be too short" do
subject.title = "a"
expect(subject).to_not be_valid
end

end
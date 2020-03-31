require 'spec_helper'
require 'rails_helper'

RSpec.describe Event, type: :model do 
	context 'validations' do
		it { should validate_presence_of(:title) }
	end
	 context 'associations' do
      it { should belong_to(:user) }
    end
end
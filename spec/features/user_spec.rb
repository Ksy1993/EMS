# require "rails_helper"
# RSpec.feature "adding user" do
# 	scenario "create a user" do
# 		user = create(:user)
# 		visit new_user_registration_path
# 		expect(page).to have_content("rahul@123")
# 		expect(page).to have _content("rahul123")
# 	end
# end
require "rails_helper"
RSpec.feature "adding event" do
	scenario "allow user to create event" do
		event = create(:event)
		visit event_path
		expect(page).to have_content("good")
	end
end
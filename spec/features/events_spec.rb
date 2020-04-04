# require "rails_helper"

# RSpec.feature "Event management", :type => :feature do
#   scenario "User creates a new Event" do
#     visit "/events/new"

#     fill_in "title", :with => "runevent"
#     click_button "Create Event"

#     expect(page).to have_text("Event was successfully created.")
#   end
# end
require "rails_helper"
RSpec.feature "adding event" do
	scenario "allow user to create event" do
		event = create(:event)
		visit event_path
		expect(page).to have_content("good")
	end
end